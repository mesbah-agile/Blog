package com.Blog

class CommentController {
    
    //def scaffold = true

    def index = {
        redirect (action: edit)
    }    
    
    // def edit = {
    //     def comment = Comment.get(params.id)
    //     if(!comment) {
    //         comment = new Comment()
    //     }
    //     render(view:'edit', model:[comment:comment], postId:params.postId)
    // }

    def edit = {
        def comment = Comment.get(params.id)
        render(view:'edit',
                model:[comment:new Comment(),
                        postId:params.postId])
    }

    def save = {
        def comment = new Comment(params)
        comment.dateCreated = new Date();
        comment.post = Post.get(params.postId)
        if(comment.save()) {
            redirect(
                    controller:'post',
                    action:'view',
                    id:params.postId)
        }
        else {
            comment.save(failOnError: true, flush: true)
            render(view:'edit',
                    model:[comment:comment,
                            postId:params.postId])
        }
    }
    
    // def save = {
    //     def comment = loadComment(params.id)
    //     comment.properties = params
    //     if(comment.save()) {
    //         redirect(action:'list')
    //     } else {
    //         render(view:'edit', model:[comment:comment])
    //     }
    // }

    // private loadComment(id) {
    //     def comment = new Comment();
    //     if(id) {
    //         comment = Comment.get(id)
    //     }
    //     return comment
    // }

    // def view () {
    //     render(view:'view', model:[comment:Comment.get(params.id)])
    // }
}

package com.Blog

class Comment implements Comparable{

    static belongsTo = Post

    String name
    String url
    String email
    Post post
    String comment
    Date dateCreated

    public int compareTo(Object o) {
        return dateCreated.compareTo(o.dateCreated)
    }

    static constraints = {
        name(nullable:false, blank:false)
        url(nullable:true, blank:true, url:true)
        email(nullable:true, blank:true, email:true)
    }
}

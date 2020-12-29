package com.Blog

class Post {

    static hasMany = [comments:Comment]

    String title
    String teaser
    String content
    Date lastUpdated
    Boolean published = false
    SortedSet comments

    String toString (){
        return "${title}"
    }

    static constraints = {

        title(nullable:false, blank:false, length:1..50)
        teaser(length:0..100)
        content(nullable:false, blank:false)
        lastUpdated(nullable:true, min: new Date())
        published(nullable:false)
    }
}

/*!
* Start Bootstrap - Blog Post v5.0.8 (https://startbootstrap.com/template/blog-post)
* Copyright 2013-2022 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-blog-post/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

$(function(){
    $(".post-like").on("click", function (){
        var post_id = $(this).data("id");
        $.ajax({
            url: "/post/like"+post_id,
            method: "GET"
        }).done(function (response){
            console.log(response);
        })
    })
})

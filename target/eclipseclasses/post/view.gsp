
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>

<html lang="en">
  <head>
    <title>${post.title}</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">
    <style>
    h1 {text-transform:capitalize;font-family: "Audiowide", sans-serif;}
    
   
    </style>

  </head>

  <body style="background-color: #dbdbc9;">
    <div class="jumbotron jumbotron-fluid bg-secondary.bg-gradient">
      <h1 class="display-4 text-center "><u>${post.title} </u></h1>
      <h3 class="text-muted lead text-center"> <em>${post.teaser}</em></h3>
      <p class="h8 text-muted lead text-center">Made by: ${post.name} updated on ${post.lastUpdated}</p>
    </div>
    <p class="h5 p-4 ">${post.content}</p>
    <p class="h6 m-3 d-inline p-2 bg-danger text-white"> Comment </p>
    <g:each in="${post.comments}" var="comment" >
      <p>  
        <div class="container-fluid ">
              <div class="col col-md-auto px-0">
                <div class="comment mx-0 col col-md-auto bg-dark text-light w-50 p-3 ">
                    <figure >
                      <blockquote class="blockquote">
                        <p class="p mb bg-light text-dark">
                          <p class="h6 m-1"> ${comment.comment} </p>
                        </p>
                      </blockquote>
                      <figcaption class="blockquote-footer">
                        <cite title="Source Title">
                        <p class="m-1 text-light fst-italic">Made by: ${comment.name} on ${comment.dateCreated}</p>
                        </cite>
                      </figcaption>
                    </figure>
                  </div>
              </div>
          </div>
        </p>
    </g:each>

    <g:link controller="post" action="list">
    <button type="button" class="btn btn-outline-dark mx-3" >Post list</button>
    </g:link>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
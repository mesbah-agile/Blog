<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Create Comment</title>
  </head>
  <body>
  <h1>Create a comment</h1>
  <div id="validationerrors">
      <g:renderErrors bean="${comment}"/>
  </div>
  <g:form controller="comment" action="save">
      <g:hiddenField name="postId" value="${postId}"/>
      <dl>
          <dt>Your name:</dt>
          <dd>
          <g:textField name="name" value="${comment.name}"/>
          </dd>
          <dt>Your email:</dt>
          <dd>
          <g:textField name="email" value="${comment.email}"/>
          </dd>
          <dt>Your website/blog:</dt>
          <dd>
          <g:textField name="url" value="${comment.url}"/>
          </dd>
          <dt>Add your comment:</dt>
          <dd>
          <g:textArea name="comment" value="${comment.comment}" rows="20" cols="50"/>
          </dd>
          <dt>Post</dt>
          <%-- <g:select name="post" from ="${comment.post.list()}" optionKey="id" required="" value="${commentInstance?.post?.id}" /> --%>
      </dl>
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  </body>
</html>
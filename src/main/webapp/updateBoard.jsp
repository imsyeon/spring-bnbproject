<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>숙소, 체험, 장소를 모두 한 곳에서 - 에어비앤비</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">

    

    <!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">



    <style>
    
  .container{
        margin-top: 30px;
      }
      .col-md-6 mb-3{
      
      }
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      nav{
    display: grid;
    grid-template-columns: auto auto;
    justify-content: space-between;
}
.logo{
    margin: 10px 0 0 20px;
    color: rgb(255, 56, 92);
    font-size: 35px;
    font-weight: 800;
}

.menu ul{
    margin: 15px 20px 0 0;
    display: grid;
    grid-template-columns: auto auto auto auto;
    grid-gap: 30px;
    list-style: none;
    margin-right: 20px;
}
.file{
margin-bottom:20px;
}
.room{
margin-top:20px;
}
.menu ul a{
    text-decoration: none;
    color: rgb(34, 34, 34);
   }
  
   

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="resources/css/form-validation.css" rel="stylesheet">
  </head>
   <nav>
            <div class="logo">
                <svg width="30" height="32" fill="currentcolor" style="display: inline-block;"><path d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5z"></path></svg>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="indexUser.jsp">Home</a></li>	
                    <li><a href="getBoardList.do">집 구경하기</a></li>    	
                    <li><a href="modifyUser.jsp">정보수정</a></li>
                </ul>
            </div>
        </nav>
  <body>
    
<div class="container">
  <div class="py-5 text-center">
    <h2>호스트가 되어 보세요!</h2>
    <p class="lead">에어비앤비 호스트가 되면 남는 공간을 활용해 부수입을 올리고 진짜 하고 싶을 일에 매진할 수 있습니다.</p>
  </div>

    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">호스트님의 집 정보를 작성해 주세요.</h4>
      <form action="updateBoard.do" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
        <div class="row">
        <div class="col-md-10 mb-3">
            <label for="firstName">집을 소개해 주세요.</label>
            <input type="text" class="form-control" name="board_title" placeholder="" value="" required>
            <div class="invalid-feedback">
              Valid title is required.
            </div>
          </div>
          <div class="col-md-10 mb-3">
            <label for="firstName">Name</label>
            <input type="text" class="form-control" name="board_nickname" placeholder="" value="" required>
            <div class="invalid-feedback">
              Valid name is required.
            </div>
          </div>
           </div>
           <label>이미지</label>
           <div class="file">
          <input type="file"  multiple="multiple" onchange="readURL(this);" name="uploadFile"/>
          <div class="room"><img id="roomimg" src=""/></div>
          
          <script>
         function readURL(input){
        	  if(input.files && input.files[0]) {
          	    var reader = new FileReader;
          	    reader.onload = function(e) {
          	     $('#roomimg').attr('src',e.target.result).width(500);     
          	    }
          	    reader.readAsDataURL(input.files[0]);
          	   }
		}
        	 
        	 
          </script>
          <%=request.getRealPath("/") %>
          </div>
          
          
         
        </div>
          <div class="mb-3" >
          <label for="address">Description</label>
          <textarea class="form-control" name="board_content" cols="40" rows="10" placeholder="" required></textarea>
          <div class="invalid-feedback">
            Please enter your shipping address.
          </div>
        </div>

        <div class="row">
          <div class="col-md-5 mb-3">
            <label for="country">Country</label>
            <select class="custom-select d-block w-100"  name="board_reion"required>
              <option value="">Choose...</option>
              <option>United States</option>
              <option>Republic of Korea</option>
              <option>China</option>
              <option>UK</option>
              <option>Italy</option>
            </select>
            <div class="invalid-feedback">
              Please select a valid country.
            </div>
          </div>
          
        
        <hr class="mb-4">
        <input type="submit"class="btn btn-primary btn-lg btn-block" value="Submit"/>
      </form>
    </div>
  </div>
	</div>
  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2021 Company Name</p>
  </footer>
</div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
        <script src="form-validation.js"></script>
  </body>
</html>
    
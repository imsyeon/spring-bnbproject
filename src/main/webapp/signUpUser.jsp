<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link rel="stylesheet" href="https://airbnb-clone-nomadcoders.s3.amazonaws.com/static/css/styles.css">
    <title> Sign Up| Airbnb</title>
  </head>
  <body class="text-gray-800 mt-24 font-light">
    
    <header class="container max-w-full inset-0 flex items-center justify-between px-6 h-20 border-b border-gray-400 fixed bg-white">
      <div class="flex items-center w-1/3">
        <a href="index2.jsp" class="mr-6">
            <img class="w-8" src="https://airbnb-clone-nomadcoders.s3.amazonaws.com/static/img/logo.png" />
        </a>
      </div>
      
<ul class="flex items-center text-sm font-medium h-full">
    
        <li class="nav_link"><a href="login2.jsp">로그인</a></li>
        <li class="nav_link"><a href="signUp.jsp">Sign up</a></li>
</ul>
    </header>

    <div class="container lg:w-5/12 md:w-1/2 xl:w-1/4 mx-auto my-10 flex flex-col items-center border p-6 border-gray-400">

        <div class="flex flex-col w-full">
    <a href="#" class="btn border-2  text-gray-700 mb-2 border-gray-700">
        <i class="fab fa-github-alt mr-2 fa-lg"></i> Continue with Github
    </a>
    <a href="#" class="btn border text-yellow-800 mb-2 border-yellow-400 bg-yellow-400 ">
        <i class="fas fa-comment mr-2 fa-lg"></i> Continue with Kakao
    </a>
</div>

<div class="flex items-center w-full my-5">
    <div class="h-px w-full bg-gray-400"></div>
    <span class="text-gray-600 font-medium mx-4 text-sm">or</span>
    <div class="h-px w-full bg-gray-400"></div>
</div>
        <form action="insertUser.do" method="POST" class="w-full">
  		 <input type="hidden" name="user_role" value="user">
    
        <div class="input w-full ">
    <input type="text" name="user_name" value="Name" placeholder="First Name" maxlength="30" id="id_first_name">
    
</div>
        <div class="input w-full ">
    <input type="email" name="user_email" placeholder="Email" maxlength="254" id="id_email">
    
</div>
    
        <div class="input w-full ">
    <input type="password" name="user_password" placeholder="Password" required id="id_password">
    
</div>
    
       <!--   <div class="input w-full ">
    <input type="password" name="user_password1" placeholder="Confirm Password" required id="id_password1">
    
</div>-->
    
    
    <button class="btn bg-red-500 text-white">Sign up</button>
</form>

        <div class="mt-5">
                <span class="mr-2">Have an account?</span>
                <a href="login.do" class="text-teal-500 font-medium">Log in</a>
            </div>

    </div>

<footer class="container mx-auto text-center py-10 border-t font-medium text-gray-500">
    <div class="flex flex-col">
        <span>
            Please don't copy us.
        </span>
        <span>&copy; 2019 Nomad Coders. All rights reserved.</span>
    </div>
    <div class="mt-10 flex">
        
        <select class="w-1/5 h-8" id="js-lang">
            <option value="en"
                
            >English</option>
            <option value="es"
                
            >Spanish</option>
        </select>
    </div>
</footer>
    <script>
        const langSelect = document.getElementById("js-lang");
        const handleLangChange = () => {
            const selected = langSelect.value;
            fetch(`/users/switch-language/?lang=${selected}`).then(() => window.location.reload());
        }
        langSelect.addEventListener("change", handleLangChange);
    </script>
  </body>
</html>
    
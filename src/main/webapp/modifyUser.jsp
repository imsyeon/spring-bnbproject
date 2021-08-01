<%@page import="com.spring.web.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.getAttribute("user_idx");
//UserVO user = (UserVO)request.getAttribute("user");
System.out.print(session.getAttribute("user_idx"));
//System.out.print(user);
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link rel="stylesheet" href="https://airbnb-clone-nomadcoders.s3.amazonaws.com/static/css/styles.css">
    <title>
    Update Profile / airbnb</title>
  </head>
  <body class="text-gray-800 mt-24 font-light">
    
    <header class="container max-w-full inset-0 flex items-center justify-between px-6 h-20 border-b border-gray-400 fixed bg-white">
      <div class="flex items-center w-1/3">
        <a href="indexUser.jsp" class="mr-6">
            <img class="w-8" src="https://airbnb-clone-nomadcoders.s3.amazonaws.com/static/img/logo.png" />
        </a>
      </div>
      
<ul class="flex items-center text-sm font-medium h-full">
       
        <li class="nav_link"><a href="indexUser.jsp">Home</a></li>
        <li class="nav_link"><a href="logout.do">로그아웃</a></li>
    
</ul>

    </header>

    
     
    <div class="container lg:w-5/12 md:w-1/2 xl:w-1/4 mx-auto my-10 flex flex-col items-center border p-6 border-gray-400">

        <form ame="modifyUserForm" action="modifyUser.do" method="POST" class="w-full">
   <input type="hidden" name="user_idx" value="<%=session.getAttribute("user_idx") %>">
    
        <div class="input w-full ">
    <input type="text" name="user_name" value="Name" placeholder="First name" id="id_first_name">
    
</div>

        <div class="input w-full ">
    <input type="text" name="user_email" value="email" placeholder="First name" id="id_first_name">
    
</div>
  

    
    
    <button class="btn bg-red-500 text-white">Update profile</button>
</form>

        
            <div class="mt-5">
                <a href="#" class="text-teal-500 font-medium">Change Password</a>
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

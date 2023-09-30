 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type = "text/css">
 body{
        background-color:#E5E4E2;
      }
       input {
          width:13px;
            margin-top: 10px;
           
            height: 30px;
          font-size:13px;
        }
        .new{
          width:800px;
        }

        label {
          font-size: 160%;
          height: 30px;
            width: 20%;
            color: black;
          }
          select{
            font-size: 20px;
            height: 40px;
            width: 800px;
            border-radius: 6px;
            margin: 22px 0px;
            color:grey;
            border: 2px  brown solid;

          }
        
        #title{
          font-size: 5vh;
          padding-left:60vh;
          justify-content: center;
          position: relative;
          text-align: center;
          display:inline;
          color: aliceblue;
          text-decoration: underline;
        }
        #description{
          font-size: 4vh;
          padding-left:45vh;
          justify-content: center;
          position: relative;
          text-align: center;
          display:inline;
          color: aliceblue;
        }
        textarea{
          margin-top: 10px;
          width:800px;
          font-size:20px;

        }
		fieldset{
		width:100px;
		 padding: auto;
        margin: 13px auto;
		background-color: white;
    opacity:0.9;
    border: 2px solid black;
		}
     .btn{
      
      padding-left: 23vh;
      
    }
    
    #submit{
       
      height: 70px;
      width:200px;
      text-align: center;
      cursor:pointer;
      background-color: #D3D3D3;
      
      
      font-size: 40px;
    }
       
.required::after {
        content: ' *';
        color: red;
      }
      .discription{
      background-color:grey;
      padding-left:20vh;
      }
      .heading{
      
      font-size:60px;
      }
      .para{
      font-size:30px;
      }
</style>
</head>
<body>
<fieldset>
    <div id="form_div">
      <form action ="${pageContext.request.contextPath}/Admin">
      <div class = "discription">
      <h1 class = "heading">Admin Login</h1>
      <p class = "para">Only Admin Can Login</p>
      </div>
<label for= "name" class="name-label  required"> Name:</label><br> 
     <input class="new" type ="text" id="name" name= "uname"   required /> <br> <br>
  <label for= "email" class ="email-label required"> Password</label> <br> 
     <input class="new"type ="password" id="email" name= "pass"   required /><br><br> 
      <div class="btn"><input type = "submit" id="submit"></div>
      </form>
      </div>
      </fieldset>
</form>
</body>
</html>
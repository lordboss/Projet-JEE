<!doctype html>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@include file="/WEB-INF/jsp/HautPage.jsp" %>
<html>
    <head>

        <style type="text/css">
 
            body {font-family:Arial, Sans-Serif;}
      	
   			
            #container {width:350px; margin:0 auto;}
 
            /* Nicely lines up the labels. */
            form label {display:inline-block; width:350px;}
 		    form [textarea] {background-color:#afafaf;}
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
          input[type=text], input[type=password],    form input[type="email"], form input[type="date"]{
        	 width:392px;
       		 padding:2px 4px;
  			 color:#2a2a2a;
     	     border:1px solid #fff;
      	     border-radius:2px;
  			 background-color:#afafaf;
  			 margin:3px 0;
 			 display:block;
		}
            
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
			body {
			color:RoyalBlue;
			background-color:white;
			background-image:url(http://www.ogametut.free.fr/galeries/02/aa5.jpg);
			}
			
			input[type=submit]
{
	display: block;
	position: relative;
	margin-left: auto;
	margin-right: auto;
}
legend {
        color:RoyalBlue;
        font-weight:bold;
        padding:2px 4px;
}
fieldset {
        width:400px;
        margin:auto;
  margin-top:50px;
        padding:6px;
        background-color:#302f2c;
        border-radius:3px;
        border:1px solid #afafaf;
}
submit-button {
  display:inline-block;
  float:right;
  height:20px;
  background-color:#E3E3E3;
  border:1px solid #CCC;
  border-radius:2px;
  cursor:pointer;
  padding:0;
  margin:-1px -2px 0 3px;
  color:#3c3c3c;
}
.submit-button > .top {
  height:8px;
  background-color:#F4F4F4;
  border-bottom:1px solid #EEE;
}
.submit-button > .content {
  margin-top:-9px;
  padding:0 10px;
  line-height:20px;
  text-align:center;
}
.submit-button:hover {
  background-color:#F4F4F4;
  border-color:#888;
  box-shadow:0 0 8px #ebc57c;
}
.submit-button:hover > .top { background-color:#E3E3E3; }

          
        </style>
    </head>
    <body>
        <div id="container">
            <form>
             <fieldset>
   
                <legend><b>Registration</b></legend>
                <div class="line"><label for="login">Username *: </label><input type="text" id="login" required="required" /></div>
                <div class="line"><label for="pwd">Password *: </label><input type="password" id="pwd" required="required"size=6/></div>
                <div class="line"><label for="pwdc">Confirm your password *:</label><input type="password" id="pwdc" data-equals="pwd" required="required"/></div>
                <div class="line"><label for="firstName">firstname *: </label><input type="text" id="firstName" required="required" /></div>
                  <div class="line"><label for="lastName">lastname *: </label><input type="text" id="lastName" required="required" /></div>
                <!-- You may want to consider adding a "confirm" password box also -->
                <div class="line"><label for="dob">Date of Birth *: </label><input type="date" id="dob" value="1980-01-01s" required="required"/></div>
                <div class="line"><label for="email">Email *: </label><input type="email" id="email" required="required"/></div>
                <!-- Valid input types: http://www.w3schools.com/html5/html5_form_input_types.asp -->
                <div class="line"><label for="tel">Telephone: </label><input type="text" id="tel" /></div>
                <div class="line"><label for="add">Address *: </label><input type="text" id="add" required="required" /></div>
                 <div class="line"><label for="country">Country *: </label><input type="text" id="country" /></div>
                <div class="line"><label for="ptc">Zip Code *: </label><input type="text" id="ptc" /></div>
              
          <p>
            <label>Conditions Générales d'Utilisation</label>
          </p>
          <p>
            <textarea name="cgu" cols="47" rows="10" readonly="readonly">
  
	Ecrire les conditions d'utilisation d'u site !!!!!
	Loi applicable - Attribution de compétence
    !
    !
    !
    !
    !
    !
	Tout litige qui surviendrait concernant l’interprétation et l’exécution des présentes 
	Conditions d’Utilisation devra faire l’objet d’une tentative de règlement amiable.</textarea>
          </p>
          
           <input type=checkbox  path ="termsAccepted" value="1" required="required"/><label>J'accepte les conditions générales d'utilisation</label>     <br> </br>
           <input type=checkbox  value="1"/><label>J'accepte de recevoir la newsletter du site</label>         	
  
        </fields>
      </div>  
       <div class="submit-button">
          <div class="top"></div>
          <div class="content">Connexion</div>
          </div>
       </fieldset> 
      <p>
      Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.
      </p>
      
            </form>
        </div>
    </body>
</html>
<%@include file="BasDePage.jsp" %>
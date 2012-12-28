<!doctype html>

<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<html>
    <head>

        <style type="text/css">
 
            body {font-family:Arial, Sans-Serif;}
      	
   			
            #container {width:350px; margin:0 auto;}
 
            /* Nicely lines up the labels. */
            form label {display:inline-block; width:140px;}
 
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
            form input[type="text"],
            form input[type="password"],
            form input[type="date"],
            form input[type="email"] {width:160px;}
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
			body {
	color:black;
	background-color:white;
	background-image:url(http://www.ogametut.free.fr/galeries/02/aa5.jpg);
	}
	
            
        </style>
    </head>
    <body>
        <div id="container">
            <form>
            <FONT COLOR="#C0C0C0">
                <h1>Registration</h1>
                <div class="line"><label for="username">Username *: </label><input type="text" id="username" required="required" /></div>
                <div class="line"><label for="pwd">Password *: </label><input type="password" id="pwd" required="required"size=6/></div>
                <div class="line"><label for="pwdc">Confirm your password *: </label><input type="password" id="pwdc" data-equals="pwd" required="required"/></div>
                <!-- You may want to consider adding a "confirm" password box also -->
                <div class="line"><label for="dob">Date of Birth *: </label><input type="date" id="dob" value="1980-01-01s" required="required"/></div>
                <div class="line"><label for="email">Email *: </label><input type="email" id="email" required="required"/></div>
                <!-- Valid input types: http://www.w3schools.com/html5/html5_form_input_types.asp -->
                <div class="line"><label for="tel">Telephone: </label><input type="text" id="tel" /></div>
                <div class="line"><label for="add">Address *: </label><input type="text" id="add" /></div>
                <div class="line"><label for="ptc">Zip Code *: </label><input type="text" id="zc" /></div>
            </div>    
                   	
            
          <p>
            <label>Conditions Générales d'Utilisation</label>
          </p>
          <p>
            <textarea name="cgu" cols="150" rows="13" readonly="readonly">

	Ecrire les conditions d'utilisation d'u site !!!!!
	Loi applicable - Attribution de compétence

	Tout litige qui surviendrait concernant l’interprétation et l’exécution des présentes 
	Conditions d’Utilisation devra faire l’objet d’une tentative de règlement amiable.</textarea>
          </p>
          <p>
            <input type=checkbox  value="1" required="required"/>
            <label>J'ai lu et j'accepte les conditions générales d'utilisation</label>
          </p>
          <p>
          
            <input type=checkbox  value="1"/>
            <label>J'accepte de recevoir la newsletter du site</label>
          </p>
        </fieldset>
      </div>
                
                
                </font>
                <div class="line submit"><input type="submit" value="Submit" /></div>
 
                <p>Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.</p>
            </form>
        </div>
    </body>
</html>

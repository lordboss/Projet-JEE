<HTML><style type="text/css">
    body {background-image:url(http://www.ogametut.free.fr/galeries/07/trou_noir2.jpg);}
    </style>
        <style type="text/css">
        h1{font-family: "Verdana",sans-serif; color: blanchedalmond;position:absolute; top:250px;left:500px;}
	TR{font-family: "Georgia", serif ; color: blanchedalmond;} 
        TABLE{position:absolute; top: 300px; left: 500px;}
        </style>
        
        <FORM method="POST" action="../AccountCreation">
        
            <h1> Authentification</h1>
            <TABLE width=350>
        <TR>
	<TD>Login : </TD>
	<TD><INPUT TYPE='text' NAME='username' size='30'></TD>
        
</TR> 
<TR>
	<TD>Mot de passe : </TD>
	<TD><INPUT TYPE='password' NAME='password' size='30'></TD>
</TR>

<TR>
	<TD>&nbsp;</TD>
	<TD style='text-align :right'>
	<INPUT TYPE="submit" value="Se connecter"></TD>
	<TD><a href="../AccountCreation?accountAction=signUp">S'inscrire</a></TD>
</TR></TABLE>
	<input type="hidden" name="accountAction" value="signIn">
</FORM>
</BODY></HTML>

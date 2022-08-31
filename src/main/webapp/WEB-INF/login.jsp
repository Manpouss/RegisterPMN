<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <section aria-label="section">
    	<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<form name="contactForm" id='contact_form' class="form-border" method="post" >
	                    <h3>Me connecter</h3>
	                    <div class="field-set">
	                        <label>Login</label>
	                        <input type='text' name='clogin' id='clogin' class="form-control" placeholder="Login" required="required">
	                    </div>
	
	
	                    <div class="field-set">
	                        <label>Mot de passe</label>
	                        <input type='password' name='cpsw' id='cpsw' class="form-control" placeholder="Mot de passe" required="required">
	                    </div>
	
	                 	 <div id='submit'>
	                     	<input type='submit' name="bconnexion" value='Connexion' class="btn btn-main color-2">
	                 	</div>
					
                	</form>
				</div>
        	</div>
		</div>
	</section>
</body>
</html>
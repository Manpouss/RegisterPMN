<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Inscription</title>
	
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form name="registerForm" id="register_form" method="post">
		<fieldset id="mainTitleF">
			<legend id="mainTitleL">Inscription</legend>
			<div class="row">
	            <div class="col-md-6">
		            <div class="field-set">
		            	<div class="fieldLabel">
		                	<label class="field">Nom :</label>
		                </div>
		                <div class="fieldContent">
			                <input type='text' name='ilname' id='ilname' class="form-control" required="required" autofocus value="" > 
			                <span class="star">* </span>   
		                </div>
		            </div>
	            </div>
	
				<div class="col-md-6">
	            	<div class="field-set">
	            	<div class="fieldLabel">
		                <label class="field">Prénom :</label>
		            </div>
		            <div class="fieldContent">
		                <input type='text' name='ifname' id='ifname' class="form-control" required="required" value=""> 
		                <span class="star">* </span>   
		            </div> 
	                </div>
	            </div>
	            <div class="col-md-6">
		            <div class="field-set">
		            <div class="fieldLabel">
		                <label class="field">Email :</label>
		            </div>
		            <div class="fieldContent">
		                <input type='text' name='imail' id='imail' class="form-control" required="required" value="">
		                <span class="star">* </span>  
		            </div>   
		            </div>
	            </div>
	            <div class="col-md-6">
		            <div class="field-set">
		            <div class="fieldLabel">
		                <label class="field">Date de naissance :</label>
		            </div>
		            <div class="fieldContent">
		                <input type='date' name='idateofbirth' id='idateofbirth' class="form-control"> 
		                <span class="star">* </span>  
		            </div>   
		            </div>
		        </div>
	            <div class="col-md-6">
		             <div class="field-set">
		             <div class="fieldLabel">
		                 <label class="field">Téléphone:</label>
		             </div>
		             <div class="fieldContent">
		                 <input type='text' name='itel' id='itel' class="form-control" required="required"> 
		                 <span class="star">* </span>  
		             </div>   
		             </div>
	         	</div>
				<div class="col-md-12">
		           	<div class="field-set">
		           	<div class="fieldLabel">
			            <label class="field">Sexe :</label>
			        </div>
					<div id="sexe" class="fieldContent">
					    <input type="radio" id="man" name="sexe" value="man">
					    <label for="man">M</label>
	     
					    <input type="radio" id="woman" name="sexe" value="woman">
					    <label for="woman">F</label>    
	     				<span class="star">* </span>   
	     			</div>                            
	            	</div>
	         	</div>	
	            <div class="col-md-6">
		            <div class="field-set">
		            <div class="fieldLabel">
		                <label class="field">Mot de passe:</label>
		            </div>
		            <div class="fieldContent">
		                <input type='password' name='ipsw' id='ipsw' class="form-control" required="required" value=""> 
		                <span class="star">* </span>  
		            </div>    
		            </div>
	        	</div>
	              
	            <div class="col-md-6">
	                <div class="field-set">
	                <div class="fieldLabel">
	                    <label class="field">Confirmez votre mot de passe:</label>
	                </div>
	                <div class="fieldContent">
	                    <input type='password' name='ipswConf' id='ipswConf' class="form-control" required="required"> 
	                    <span class="star">* </span> 
					</div>  
	                </div>
	            </div>
	              
	            <div class="col-md-12">
	                <div class="field-set">
	                	<div class="fieldLabel">
	                    <label class="field">Pays :</label>
	                    </div>
	                    <div class="fieldContent">
	                    <select name="icountry" id="icountry" class="form-control" required="required">
	                        <option value="france">France</option>
	                        <option value="mali">Mali</option>
	                        <option value="congo">Congo</option>
	                        <option value="canada">Canada</option>
	                        <option value="japon">Japon</option>
	                        <option value="maroc">Maroc</option>
	                    </select>  
	                    <span class="star">* </span> 
	                    </div>                                           
	                </div>
	            </div>	
	               
	            <div class="col-md-12">
	                 <div class="field-set">
	                 <div class="fieldLabel">
	                    <label class="field">Consoles préférées :</label>
	                 </div>
	                 <div class="fieldContent" style="margin-left: 33em;">
	                 	<div>
			      			<input type="checkbox" id="psfive" name="console" value="PS5">
			      			<label for="scales">PS5</label>
			    		</div>
			
					    <div>
					      <input type="checkbox" id="xbox" name="console" value="XBOX">
					      <label for="horns">XBOX</label>
					    </div> 
			     		
					    <div>
					      <input type="checkbox" id="switch" name="console" value="Switch">
					      <label for="scales">Switch</label>
					    </div>
			
					    <div>
					      <input type="checkbox" id="psfour" name="console" value="PS4">
					      <label for="horns">PS4</label>
					    </div>                                      
	                 </div>
	                 <span class="star">* </span>  
	                 </div>
	             </div><!-- 	-->
	             <div class="col-md-12 buttondiv">
	                                                      
	                 <div id='submit' class="pull-left">
	                 	<button class="btn btn-main color-2" id="valid" type="submit" name="bregister"><span>Valider</span></button>
	                 	<button class="btn btn-main color-2" id="cancel" type="reset" name="bregister"><span>Cancel</span></button>
	                 </div>
	             </div>	
	
	         </div>
	         
         </fieldset>
	</form>
</body>
</html>
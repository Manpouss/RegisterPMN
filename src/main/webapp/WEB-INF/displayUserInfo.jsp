<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		String[] user_info = (String[])request.getAttribute("user_info"); 
		String[] values = (String[])request.getAttribute("values");
	
	%>
	<form name="registerForm" id="register_form" method="post">
		<fieldset id="mainTitleF">
			<legend id="mainTitleL">Inscription</legend>
			<div class="row">
	            <div class="col-md-6">
		            <div class="field-set">
		            	<div class="fieldLabel">
		                	<label class="field">Nom : <%= user_info[0] %></label>
		                </div>
		            </div>
	            </div>
	
				<div class="col-md-6">
	            	<div class="field-set">
	            	<div class="fieldLabel">
		                <label class="field">Prénom : <%= user_info[1] %></label>
		            </div> 
	                </div>
	            </div>
	            <div class="col-md-6">
		            <div class="field-set">
		            <div class="fieldLabel">
		                <label class="field">Email : <%= user_info[2] %></label>
		            </div>  
		            </div>
	            </div>
	            <div class="col-md-6">
		            <div class="field-set">
		            <div class="fieldLabel">
		                <label class="field">Date de naissance : <%= user_info[3] %></label>
		            </div>  
		            </div>
		        </div>
	            <div class="col-md-6">
		             <div class="field-set">
		             <div class="fieldLabel">
		                 <label class="field">Téléphone : <%= user_info[4] %></label>
		             </div>   
		             </div>
	         	</div>
				<div class="col-md-12">
		           	<div class="field-set">
		           	<div class="fieldLabel">
			            <label class="field">Sexe : <%= user_info[5] %></label>
			        </div>                           
	            	</div>
	         	</div>	
	              
	            <div class="col-md-12">
	                <div class="field-set">
	                	<div class="fieldLabel">
	                    <label class="field">Pays :  <%= user_info[7].substring(0,1).toUpperCase()+""+user_info[7].substring(1).toLowerCase() %></label>
	                    </div>
	                    </div>                                           
	                </div>
	            </div>	
	               
	            <div class="col-md-12">
	                 <div class="field-set">
	                 <div class="fieldLabel">
	                    <label class="field">Consoles préférées :
	                    <%
	                    	for (int i = 0; i < values.length; i++){
	                    		if(i != values.length - 1){
		                    		out.print(values[i]+" ,");
	                    		}else if(i == values.length - 1){
		                    		out.print(values[i]);
	                    		}
	                    	}
	                    %>
	                    </label>
	                 </div>
	                 </div>
	             </div><!-- 	-->
	             <div class="col-md-12 buttondiv">
	                                                      
	                 <div id='submit' class="pull-left">
	                 	<button class="btn btn-main color-2" id="valid" type="submit" name="bregister"><span>Enregistrer</span></button>
	                 	<button class="btn btn-main color-2" id="cancel" type="reset" name="bregister"><span>Annuler</span></button>
	                 </div>
	             </div>	
	
	         </div>
	         
         </fieldset>
	</form>
</body>
</html>
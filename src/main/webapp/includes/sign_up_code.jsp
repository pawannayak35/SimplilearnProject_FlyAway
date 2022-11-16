<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="card customCard">
	<div class="card-header">
    	<i class="fa-solid fa-right-to-bracket fa-3x"></i>
  	</div>
	<form action="SignUp" method="post">
	
		<div class="Custom-form-control">
    		<input type="text" name="uname" autocomplete="off" required>
    		<label>
        		<span style="transition-delay:0ms">U</span>
        		<span style="transition-delay:50ms">s</span>
        		<span style="transition-delay:100ms">e</span>
        		<span style="transition-delay:150ms">r</span>
        		<span style="transition-delay:200ms">n</span>
        		<span style="transition-delay:250ms">a</span>
        		<span style="transition-delay:300ms">m</span>
        		<span style="transition-delay:350ms">e</span>
    		</label>
		</div>
		
		<div class="Custom-form-control">
    		<input type="password" name="upass" autocomplete="off" required>
    		<label>
        		<span style="transition-delay:0ms">P</span>
        		<span style="transition-delay:50ms">a</span>
        		<span style="transition-delay:100ms">s</span>
        		<span style="transition-delay:150ms">s</span>
        		<span style="transition-delay:200ms">w</span>
        		<span style="transition-delay:250ms">o</span>
        		<span style="transition-delay:300ms">r</span>
        		<span style="transition-delay:350ms">d</span>
    		</label>
		</div>
		
		<button type="submit" class="LoginBtn">Sign Up</button>
	</form>
	<br>
	<div class="anchor"><span>You have an account? </span><a href="login.jsp"/>Login</a></div>
</div>
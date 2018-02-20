<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password],input[type=email], input[type=date]{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password],input[type=email], input[type=date]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<script>
    function validateform()
    {
        var fn=document.myform.fname.value;
        var ln=document.myform.lname.value;
        var cty = document.myform.city.value;
        var ctry = document.myform.country.value;
        var zp = document.myform.zip.value;
        var dob = document.myform.dob.value;
        var add = document.myform.addr.value;
        var adh = document.myform.adhar.value; 
        var pc = document.myform.pan.value; 
        var m1 = document.myform.mob1.value;
        var m2 = document.myform.mob2.value;
        var pass = document.myform.psw.value;
        var pass2 = document.myform.pswr.value;
        var email = document.myform.email.value;
        
        var alphabets = /^[A-Za-z]+$/;
        var pat1=/^\d{6}$/;
        var pattern =/^([0-9]{1,2})\/([0-9]{1,2})\/([0-9]{4})$/;
        var addr = /^[a-zA-Z0-9\s,.'-]{3,}$/;
        var adhar = /^\d{12}$/;
        var pan = /^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/ ; 
        var mob = /^\d{10}$/;
        var em = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        var pp = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
 
       
        
        if(fn == "" || !(alphabets.test(fn))) 
        { 
            alert("Please Enter a Proper First Name");
            return false;
        }
        if(ln == "" || !(alphabets.test(ln)))
        {
            alert("Please Enter a Proper Last Name");
            return false;
        }
        if(!addr.test(add))
        {
            alert("Please Enter a Proper Address");
            return false;
        }
            
        if(cty == "" || !(alphabets.test(cty)))
        {
            alert("Please Enter a Proper City Name");
            return false;
        }
        
        if(!pat1.test(zp))
        {
            alert("Please Enter a Proper Pin Code");
            return false;
        }
        
        if(ctry == "" || !(alphabets.test(ctry)))
        {
            alert("Please Enter a Proper Country Name");
            return false;
        }
       
        if(!adhar.test(adh))
        {
            alert("Please Enter a Proper Adhar Number");
            return false;
        }
         if(!pan.test(pc) && pc != "")
        {
            alert("Please Enter a Proper PAN Number");
            return false;
        }
        
         if(!mob.test(m1))
        {
            alert("Please Enter a Proper Mobile Number (Mobile 1)");
            return false;
        }
         if(!mob.test(m2) && m2 != "")
        {
            alert("Please Enter a Proper Mobile Number (Mobile 2)");
            return false;
        }
         
        if(!em.test(email) )
        {
            alert("Please Enter a Valid Email ID ");
            return false;
        }
        
        if(!pp.test(pass) || pass.length < 6)
        {
            alert("Please Enter a Valid Password ");
            return false;
        }
        if(pass != pass2)
        {
            alert("Passwords don't match ");
            return false;
        }
        
       return true;
    }
    
</script>
<body>

<form name="myform" action="Test.jsp" style="border:100px solid #ccc" onsubmit="return validateform()">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="fname"><b>First Name</b></label>
      <input type="text" placeholder="Enter First Name" name="fname" required>
      
      <label for="lname"><b>Last Name</b></label>
      <input type="text" placeholder="Enter Last Name" name="lname" >
      
      <label for="addr"><b>Address</b></label>
      <input type="text" placeholder="Enter Address" name="addr" required >
      
      <label for="city"><b>City</b></label>
      <input type="text" placeholder="Enter City" name="city" required>
      
      <label for="zip"><b>Zip Code</b></label>
      <input type="text" placeholder="Enter Zip Code" name="zip" required>
      
      <label for="country"><b>Country</b></label>
      <input type="text" placeholder="Enter Country" name="country" required>
      
      <label for="dob"><b>Date of Birth</b></label>
      <input type="date" placeholder="Enter DOB" name="dob" required>
      
      <label for="adhar"><b>Adhar Card Number</b></label>
      <input type="text" placeholder="Enter Adhar Card Number" name="adhar" required>
      
      <label for="pan"><b>Pan Card Number</b></label>
      <input type="text" placeholder="Enter PAN Card Number(optional)" name="pan">
      
      <label for="mob1"><b>Mobile number 1</b></label>
      <input type="text" placeholder="Enter 10 - digit mobile number" name="mob1" required>
      
      <label for="mob2"><b>Mobile Number 2</b></label>
      <input type="text" placeholder="Enter 10 - digit mobile number(optional)" name="mob2" >
      
      <label for="email"><b>Email</b></label>
      <input type="email" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <label for="pswr"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="pswr" required>
       <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
       
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>

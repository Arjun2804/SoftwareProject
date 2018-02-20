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

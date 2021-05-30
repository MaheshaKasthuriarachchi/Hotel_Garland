function formValidation()
{

var ename = document.getElementById('empname');
var eadd = document.getElementById('empaddress');
var ememail = document.getElementById('empemail');
var empass = document.getElementById('emppass');
var ephone = document.getElementById('empcontact');


if(allLetter(ename))
{
if(alphanumeric(eadd))
{ 

if(ValidateEmail(ememail))
{
if(ValidatePhone(ephone))
{
if(ValidatePass(empass))
{    
}
} 
}
}
}
return false;





function allLetter(ename)
{ 
var letters = /^[a-zA-Z\s-, ]+$/;
if(ename.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
ename.focus();
return false;
}
}

function alphanumeric(eadd)
{ 
var letters = /^[a-zA-Z-,](\s{0,1}[a-zA-Z-, ])*[^\s]$/;
if(eadd.value.match(letters))
{
return true;
}
else
{
alert('User address must have alphanumeric characters only');
eadd.focus();
return false;
}
}

function ValidateEmail(ememail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(ememail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
ememail.focus();
return false;
}
}

function ValidatePhone(ephone)
{
  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if(ephone.value.match(phoneno))
     {
	   return true;      
	 }
   else
     {
	   alert("Not a valid Phone Number");
	   return false;
     }
}

}

function ValidatePass(empass,mx,my)
{
    
    var empass_len = empass.value.length;
if (empass_len === 0 || empass_len >= my || empass_len < mx)
{
alert("Employee Password should not be empty / length be between "+mx+" to "+my);
empass.focus();
return false;
}
return true;
}
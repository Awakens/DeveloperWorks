<!DOCTYPE html>
<!-- saved from url=(0146)https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2F -->
<html lang="en" class="dj_webkit dj_chrome dj_contentbox">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- SITE MON : START (DO NOT DELETE) -->
  <!-- developerWorks monitoring token -->
  <!-- SITE MON : END (DO NOT DELETE) -->
  <link rel="SHORTCUT ICON" href="http://www.ibm.com/favicon.ico">
  <!-- HEADER_SCRIPTS_AND_CSS_INCLUDE -->
  <link href="./files/www.css" rel="stylesheet" title="www" type="text/css">
  <!-- Masthead/footer -->
  <link href="./files/dw-mf.css" media="screen" rel="stylesheet" title="www" type="text/css">
  <link href="./files/dw-mf-minimal-N.css" media="screen" rel="stylesheet" title="www" type="text/css">
  <!-- Home CSS -->
  <link href="./files/dwwi-v17.css" media="screen" rel="stylesheet" title="www" type="text/css">
  <script type="text/javascript" async="" charset="utf-8" src="./files/eluminate.js" id="tealium_cormetrics1239"></script>
  <script src="./files/utag.js" type="text/javascript" async=""></script>
  <script type="text/javascript" src="./files/www.js"></script>
  <script type="text/javascript" src="./files/eluminate(1).js"></script>
  <script type="text/javascript" src="./files/dw-www.js"></script>
  <script type="text/javascript" src="./files/prototype.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/move.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/TimedMoveable.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/_CssStateMixin.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/_FormMixin.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/_DialogMixin.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/DialogUnderlay.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/ContentPane.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/common.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/TooltipDialog.xd.js"></script>
  <script type="text/javascript"> ibmweb.config.sbs = false; </script>
  <script src="./files/jquery-2.2.0.min.js"></script>
  <!-- <SCRIPT src="//www.ibm.com/common/js/notice_choice_functions.js" type="text/javascript" charset="UTF-8"></SCRIPT> -->
  <!-- <SCRIPT src="//www.ibm.com/common/js/notice_choice.js" type="text/javascript" charset="UTF-8"></SCRIPT> -->
  <script type="text/javascript">
  function displayAlert() {
    var input_Counter = 0;
    var password_Counter = 0;
    $('input').each(function() {
      input_Counter++;
      if(this.type == "password") {
        password_Counter++;     }
      }
    )
    alert("Number of inputs: " + input_Counter+"\nNumber of type password: " + password_Counter);
  }
  function removetempfunction () {
    var whichindex = document.getElementById('SecurityQues').selectedIndex;
    if(whichindex == 0){
       document.getElementById('question_invalid').style.display = 'inline';
    }else{
      document.getElementById('question_invalid').style.display = 'none';
      if (whichindex == 6) {
        document.getElementById('customquestioncontainer').style.display = 'block';
        document.getElementById('custom_question').value='';
      }
      else{
        document.getElementById('customquestioncontainer').style.display = 'none';
      }
    }
  }
  function validateAns(){
    var answer = document.getElementById('SecurityAns').value;
      if(answer == ""){
        document.getElementById('ans_invalid').style.display = 'inline';
      }else{
        document.getElementById('ans_invalid').style.display = 'none';
      }
  }
  </script>
  <title>developerWorks registration</title>
  <script type="text/javascript">
    function validateFirst() {
      var firstName = document.getElementById('FName').value;
      if(firstName == ""){
        document.getElementById('userFN_invalid').style.display = 'inline';
      }else{
        document.getElementById('userFN_invalid').style.display = 'none';
      }
    }
    function validateLast() {
      var lastName = document.getElementById('LName').value;
      if(lastName == ""){
        document.getElementById('userLN_invalid').style.display = 'inline';
      }else{
        document.getElementById('userLN_invalid').style.display = 'none';
      }
    }
    function validateEmail(){
      var email = document.getElementById('emailAddress').value;
      if(email.indexOf("@") == -1){
        document.getElementById('userid_invalid').style.display = 'inline';
      }else{
        document.getElementById('userid_invalid').style.display = 'none';
      }
    }
    function validatePassword(){
      var pass = document.getElementById('Password').value;
      //var length = pass.length;
      if(pass.length < 8){
        document.getElementById('password_invalid').style.display = 'inline';
      }else{
        document.getElementById('password_invalid').style.display = 'none';
      }
    }
    function validateRePassword(){
      var pass = document.getElementById('Password').value;
      var rePass = document.getElementById('RePassword').value;
      if(rePass != pass){
          if(rePass.length < 8){
           document.getElementById('repassword_mismatch').style.display = 'none'; 
           document.getElementById('repassword_invalid').style.display = 'inline';
          }else{
           document.getElementById('repassword_invalid').style.display = 'none';
           document.getElementById('repassword_mismatch').style.display = 'inline';
          }
      }else{
           document.getElementById('repassword_mismatch').style.display = 'none';
         if(rePass.length < 8){
           document.getElementById('repassword_invalid').style.display = 'inline';
          }else{
           document.getElementById('repassword_invalid').style.display = 'none';
          }
      } 
    }
    function validateDisplayName(){
      var display = document.getElementById('alias').value;
       if(display.length < 3 || display.length > 31){
        document.getElementById('alias_invalid').style.display = 'inline';
      }else{
        document.getElementById('alias_invalid').style.display = 'none';
      }
    }
    function validateCountry(){
        var req = new XMLHttpRequest();
        var country = document.getElementById('countryResidence').value;
        var url = "${pageContext.request.contextPath}/CountryValidationServlet"+"?country="+country;
        req.onreadystatechange = function() {
            if (req.readyState == 4 && req.status == 200) {
                if (req.responseText != "ok") {
                    document.getElementById('country_invalid').style.display = 'inline';
                }else{
                    document.getElementById('country_invalid').style.display = 'none';
                }  
            }
        };
        req.open("GET", url, true);
        req.send();
    }
    function validateLang(){
      var Language = document.getElementById('Language').value
      if(Language == ""){
        document.getElementById('lang_invalid').style.display = 'inline';
      }else{
        document.getElementById('lang_invalid').style.display = 'none';
      }
    }
    /*
    function checkEmail(emailAddress){
      var Teamvalue = document.getElementById(emailAddress).value;
      var vpreLang = 'en_US';
      var vlang= "&lang=" + vpreLang;
      var sb = "email="+ Teamvalue + vlang;
      //sb = sb + "teamname=" + encodeURIComponent(Teamvalue.replace(/^\s+/g, '').replace(/\s+$/g, ''))+"&";
      var result=false;
      if(Teamvalue != null && Teamvalue != ''){
        new Ajax.Request('/developerworks/dwwi/jsp/emailExists.jsp?', 
          {parameters:sb,
          evalScripts:false, 
          asynchronous:false,
          encoding:'UTF-8', 
          onSuccess: function(t) { 
            var json = eval( "(" + t.responseText + ")" ); 
            result = true;
            if(json.result=='true') {
                document.getElementById('userid_valid').style.display = 'none';
              document.getElementById('userid_invalid').style.display = 'inline';
              document.getElementById('userid_invalid').innerHTML=json.message;
              result = true;
            } 
          }, onFailure:function(t) { 
            alert('onFail: ' + t.statusText);
          }   
        });
      }
      return result;  
    }
    */
    /*
    //Not used anymore
    function checkDisplayname(displayName){
      var Teamvalue = document.getElementById(displayName).value;
      var vpreLang = 'en_US';
      var vlang= "&lang=" + vpreLang;
      var sb = "displayname="+ Teamvalue + vlang;
      //sb = sb + "teamname=" + encodeURIComponent(Teamvalue.replace(/^\s+/g, '').replace(/\s+$/g, ''))+"&";    
      var displayNamePat = "^([A-Za-z0-9@._-]+)$";
      var matchArray = Teamvalue.match(displayNamePat); 
      var result=false;
      if( (Teamvalue == null) || (Teamvalue != null && Teamvalue.length < 3) || (matchArray == null)){
        document.getElementById('alias_valid').style.display = 'none';
        document.getElementById('alias_invalid').style.display = 'inline';
        document.getElementById('alias_invalid').innerHTML='This display name is not valid. Please choose another.';
        result = true;
        return result;
      }
      if(Teamvalue != null && Teamvalue != ''){
        new Ajax.Request('/developerworks/dwwi/jsp/displaynameExists.jsp?', 
          {parameters:sb,
          evalScripts:false, 
          asynchronous:false,
          encoding:'UTF-8', 
          onSuccess: function(t) { 
            var json = eval( "(" + t.responseText + ")" ); 
            result = true;
            if(json.result=='true') {
                document.getElementById('alias_valid').style.display = 'none';
              document.getElementById('alias_invalid').style.display = 'inline';
              document.getElementById('alias_invalid').innerHTML='This display name is taken. Please choose another.';
              result = true;
            } 
          }, onFailure:function(t) { 
            alert('onFail: ' + t.statusText);
          }   
        });
      } 
      return result;  
    }
    /*
    /*Not used anymore     
    function validatePassword() {
          var passwd = document.forms['register'].Password.value;
        var min_passwd_len = 8;
        var max_passwd_len = 31;
        if((passwd != null) && (passwd.length < min_passwd_len)){
          document.getElementById('password_valid').style.display = 'none';
          document.getElementById('password_invalid').style.display = 'inline';
          return "";
          }else if(passwd.length > max_passwd_len){
            document.getElementById('password_valid').style.display = 'none';
          document.getElementById('password_invalid').style.display = 'inline';
          return "";
          }         
          var passwdPat= "^([A-Za-z0-9@._-]+)$";
      var matchArray=passwd.match(passwdPat);
      if (matchArray == null) {
            document.getElementById('password_valid').style.display = 'none';
          document.getElementById('password_invalid').style.display = 'inline';       
      }else{
          document.getElementById('password_invalid').style.display = 'none';
          document.getElementById('password_valid').style.display = 'inline';
        }
      }
      */
      /*   
      //not used anymore
      function validateRePassword() {
          var passwd = document.forms['register'].Password.value;
          var re_passwd = document.forms['register'].RePassword.value;
          var min_passwd_len = 8;
        var max_passwd_len = 31;      
        if((re_passwd != null) && (re_passwd.length < min_passwd_len)){
          document.getElementById('repassword_valid').style.display = 'none';
          document.getElementById('repassword_invalid').style.display = 'inline';
          document.getElementById('repassword_mismatch').style.display = 'none';
          return "";
          }else if(re_passwd.length > max_passwd_len){
            document.getElementById('repassword_valid').style.display = 'none';
          document.getElementById('repassword_invalid').style.display = 'inline';
          document.getElementById('repassword_mismatch').style.display = 'none';
          return "";
          }       
          var passwdPat= "^([A-Za-z0-9@._-]+)$";
      var matchArray=re_passwd.match(passwdPat);  
      if (matchArray == null) {
        document.getElementById('repassword_valid').style.display = 'none';
          document.getElementById('repassword_invalid').style.display = 'inline';
          document.getElementById('repassword_mismatch').style.display = 'none';
          return "";
      }else if(re_passwd != passwd){
          document.getElementById('repassword_invalid').style.display = 'none';
          document.getElementById('repassword_valid').style.display = 'none';
          document.getElementById('repassword_mismatch').style.display = 'inline';
        }else{
          document.getElementById('repassword_invalid').style.display = 'none';
          document.getElementById('repassword_mismatch').style.display = 'none';
          document.getElementById('repassword_valid').style.display = 'inline';
        }
      }
      */  
      function assignSubmit(){
        document.getElementById('action').value = 'registerandtake';
        var isValid = "true";
        return isValid;
      }   
      function isValidDisplay(){
        var alias = document.forms['register'].alias.value;
        var isValid = "true";
        if( (alias.indexOf("<") != -1) || (alias.indexOf(">") != -1) || (alias.indexOf(";") != -1) || 
          (alias.indexOf(",") != -1) || (alias.indexOf("\"") != -1) || (alias.indexOf("'") != -1)){
        isValid = "false";
      }
      return isValid;
      }    
      /*
      function validateDisplayName() {
          var alias = document.forms['register'].alias.value;
          var min_passwd_len = 3;
        var max_passwd_len = 31;
        var isValid = isValidDisplay();     
        if((alias != null) && (alias.length < min_passwd_len)){
          document.getElementById('alias_valid').style.display = 'none';
          document.getElementById('alias_invalid').style.display = 'inline';
          }else if(alias.length > max_passwd_len){
            document.getElementById('alias_valid').style.display = 'none';
          document.getElementById('alias_invalid').style.display = 'inline';
        }else if(isValid == "false"){
          document.getElementById('alias_valid').style.display = 'none';
          document.getElementById('alias_invalid').style.display = 'inline';
        }else{
          document.getElementById('alias_invalid').style.display = 'none';
          document.getElementById('alias_valid').style.display = 'inline';
        }
      }   
      */
      function validateUserID() {
          var emailStr = document.forms['register'].emailAddress.value;
          document.getElementById('userid_invalid').innerHTML='This is not a valid email address.';               
          var min_passwd_len = 3;
        var max_passwd_len = 80;    
        if((emailStr != null) && (emailStr.length < min_passwd_len)){
          document.getElementById('userid_valid').style.display = 'none';
          document.getElementById('userid_invalid').style.display = 'inline';
          return "";
          }else if(emailStr.length > max_passwd_len){
            document.getElementById('userid_valid').style.display = 'none';
          document.getElementById('userid_invalid').style.display = 'inline';
          return "";
        }   
        emailStr = emailStr.replace("[" , "");
        emailStr = emailStr.replace("]" , "");    
        //var emailPat=/^(.+)@(.+)$/;
        var emailPat="^([A-Za-z0-9!#$%&'+-./=?^_`{|}~]+)@([A-Za-z0-9!#$%&'+-./=?^_`{|}~]+)[.]([A-Za-z0-9!#$%&'+-/=?^_`{|}~]{2,4})$";    
          var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
          var validChars="\[^\\s" + specialChars + "\]";
          var quotedUser="(\"[^\"]*\")";
          var atom=validChars + '+';
          var word="(" + atom + "|" + quotedUser + ")";
          var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
          var domainPat=new RegExp("^" + atom + "(\\." + atom + ")*$");       
          var matchArray=emailStr.match(emailPat);
          if (matchArray == null) {
              document.getElementById('userid_valid').style.display = 'none';
          document.getElementById('userid_invalid').style.display = 'inline';
          return "";
          }else{    
            var user=matchArray[1];
            var domain=matchArray[2];           
            if (user.match(userPat) == null) {
                document.getElementById('userid_valid').style.display = 'none';
            document.getElementById('userid_invalid').style.display = 'inline';
            return "";
            }else{
              var domainArray=domain.match(domainPat);
              if (domainArray == null) {
                  document.getElementById('userid_valid').style.display = 'none';
              document.getElementById('userid_invalid').style.display = 'inline';
              return "";
              }else{
                document.getElementById('userid_valid').style.display = 'inline';
              document.getElementById('userid_invalid').style.display = 'none';
              return "";
              }
            }
          }      
      }
  </script>
  <script typ
  e="text/javascript" charset="utf-8" src="./files/Moveable.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/Mover.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/_ContentPaneResizeMixin.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/html.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/loading.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/common.xd(1).js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/autoscroll.xd.js"></script>
  <script type="text/javascript" charset="utf-8" src="./files/_LayoutWidget.xd.js"></script>
  <script type="text/javascript" src="./files/usen-utf8.js" id="dojoIoScript2" charset="utf-8"></script>
  <script type="text/javascript" src="./files/saved_resource" id="dojoIoScript3" charset="utf-8"></script>
  <script type="text/javascript" src="./files/profiling.js" id="dojoIoScript4" charset="utf-8"></script>
  <script type="text/javascript" src="./files/mmcore.js"></script>
  <script type="text/javascript" id="mmcoreIntegration" src="./files/mmcore_old.js"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1790.js" id="utag_ibm.main_1790"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1239.js" id="utag_ibm.main_1239"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.684.js" id="utag_ibm.main_684"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.694.js" id="utag_ibm.main_694"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.699.js" id="utag_ibm.main_699"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.752.js" id="utag_ibm.main_752"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.763.js" id="utag_ibm.main_763"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1150.js" id="utag_ibm.main_1150"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1172.js" id="utag_ibm.main_1172"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1197.js" id="utag_ibm.main_1197"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1260.js" id="utag_ibm.main_1260"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1278.js" id="utag_ibm.main_1278"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1175.js" id="utag_ibm.main_1175"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.1897.js" id="utag_ibm.main_1897"></script>
  <script async="" src="./files/hotjar-42920.js"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/utag.v.js" id="tiqapp"></script>
  <script type="text/javascript" src="./files/atrk.js" id="dojoIoScript6" charset="utf-8"></script>
  <script type="text/javascript" src="./files/50200000.js"></script>
  <script type="text/javascript" src="./files/cookie-id.js"></script>
  <script type="text/javascript" src="./files/rules_50200000.js"></script>
  <script type="text/javascript" src="./files/dispatcher-v3.js"></script>
  <script src="./files/yahoo-min.js" type="text/javascript"></script>
  <script src="./files/cp-v3.js" type="text/javascript"></script>
  <script src="./files/json-min.js" type="text/javascript"></script>
  <script type="text/javascript" async="" charset="utf-8" src="./files/i.js" id="tealium_setTTDid"></script>
</head>
<body id="ibm-com" class="v17" aria-busy="false">
    <jsp:useBean id="b" class="bean.FormBean" scope="application" />
  <div id="ibm-top" class="ibm-landing-page ibm-no-scroll"><img src="./files/ibm_logo_print.png" width="43" height="15" id="ibm-print-masthead" alt="IBM Print">      
    <!-- MASTHEAD_BEGIN -->
    <div id="ibm-masthead" role="banner">
      <div id="dw-masthead-top-row">
        <ul id="ibm-mast-options-dw" role="toolbar">
          <li role="presentation" id="dw-mast-top-4">
            <a href="http://www.ibm.com/developerworks/"><img src="./files/dwn-dw-badge.png" width="43" height="22" alt="dW" aria-label="dW"></a>
          </li>
          <li role="presentation" id="dw-mast-top-3">
            <a href="http://www.ibm.com/">IBM</a>
          </li>
        </ul>
      </div>    
      <div id="ibm-universal-nav-dw" aria-label="Site map">
        <ul id="ibm-unav-links-dw">
          <li id="ibm-unav-home-dwlogo">
            <a href="http://www.ibm.com/developerworks/"><img src="./files/dwn-dw-wordmark.png" width="225" height="28" alt="developerWorks®"></a>
          </li>
        </ul>
      </div>  
    </div>
    <div id="fdiv" class="ibm-access"></div>
    <!-- MASTHEAD_END -->

    <!--<ul id="ibm-navigation-trail">
    <li class="dw-lc-wordmarkonly">&nbsp;</li>
    </ul>-->
      <div id="ibm-access-cntr" role="main">
        <div id="ibm-leadspace-head" class="ibm-alternate ibm-alternate-5col">
          <div id="ibm-leadspace-body">
            <h1 class="ibm-small">developerWorks registration</h1>
          </div>
        </div>
      <div id="ibm-pcon">
        <div id="ibm-content">
          <div id="ibm-content-body">
            <div id="ibm-content-main">
              <!-- Begin 6-4 6-2 grid -->
              <div class="ibm-columns">
                <!-- Begin 6-4 grid -->
                <div class="ibm-col-6-4">                  
                  <p>Thank you for registering with IBM developerWorks. To  simplify things, you can use the IBM ID and password that you designate below across IBM.</p>
                  <p>Asterisks (<span class="ibm-required">*</span>) indicate fields required to complete this transaction.</p>
                  <form method="post" action="FormValidationServlet" class="ibm-row-form" name="register" id="registerform">
                    <h2 class="ibm-inner-subhead">Basic registration information</h2>             
                    <div class="ibm-columns">
                      <div class="ibm-col-2-1">
                        <p>
                          <label for="FName">First name:<span class="ibm-required">*</span></label>
                          <span> <input name="FName" id="FName" size="36" type="text" value="${b.FName}" aria-required="true" onblur="validateFirst()">
                          </span>
                           <span id="userFN_invalid" style="display:none;color:red;">This is not a valid first name.</span>
                        </p>
                      </div>
                      <div class="ibm-col-2-1">
                        <p>
                          <label for="LName">Last name:<span class="ibm-required">*</span></label>
                          <span><input name="LName" id="LName" size="36" type="text" value="${b.LName}" aria-required="true" onblur="validateLast()"></span>
                          <span id="userLN_invalid" style="display:none;color:red;">This is not a valid last name.</span>
                        </p>
                      </div>
                    </div>
                    <p>
                      <label for="emailAddress">Email address:<span class="ibm-required">*</span><br>
                      <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(This will also be your IBM ID for signing in)</span></label>
                        <span><input name="UserID" id="emailAddress" size="42" type="text" value="${b.userID}" aria-required="true" onblur="validateEmail();"></span>
                      <span class="dw-lc-formerror" id="userid_invalid" style="display:none;">This is not a valid email address.</span>
                      <span class="dw-lc-formconfirm" id="userid_valid" style="display:none;">&nbsp;</span>
                    </p>
                    <p>
                      <label for="Password">Password:<span class="ibm-required">*</span><br> <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must be at least 8 characters)</span></label>
                      <span><input name="Password" id="Password" size="42" type="password" value="${b.pasword}" onblur="validatePassword();"> </span>
                        
                      <span class="dw-lc-formerror" id="password_invalid" style="display:none;">The password you entered is not valid.</span>
                      <span class="dw-lc-formconfirm" id="password_valid" style="display:none;">&nbsp;</span>
                    </p>
                    <p>
                      <label for="RePassword">Verify password:<span class="ibm-required">*</span></label>
                      <span><input name="RePassword" id="RePassword" size="42" type="password" value="${b.rePassword}" onblur="validateRePassword();"></span>
                      <span class="dw-lc-formerror" id="repassword_mismatch" style="display:none;">The passwords did not match.</span>
                      <span class="dw-lc-formerror" id="repassword_invalid" style="display:none;">The password you entered is not valid.</span>
                      <span class="dw-lc-formconfirm" id="repassword_valid" style="display:none;">&nbsp;</span>
                    </p>
                    <p>
                      <label for="alias">Display name:<span class="ibm-required">*</span><br>
                        <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must be between 3 - 31 characters. 
                          <a class="ibm-feature-link" href="https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&amp;appname=developerworks&amp;d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2F#overlay2" onclick="ibmweb.overlay.show(&#39;overlay2&#39;, this);return false;" role="button">Tips for choosing display name.</a>)
                        </span>
                      </label>
                        <span><input name="alias" id="alias" size="42" type="text" value="${b.alias}" onblur="validateDisplayName();" aria-required="true"></span>
                      <span class="dw-lc-formerror" id="alias_invalid" style="display:none;">This display name is not valid. Please choose another.</span>
                      <span class="dw-lc-formconfirm" id="alias_valid" style="display:none;">&nbsp;</span>
                    </p>
                    <!-- SUPPLEMENTAL OVERLAYS START HERE -->
                    <div class="ibm-common-overlay" id="overlay2">
                      <div class="ibm-head">
                        <p>
                          <a class="ibm-common-overlay-close" href="https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&amp;appname=developerworks&amp;d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2F#close">Close [x]</a>
                        </p>
                      </div>
                      <div class="ibm-body">
                        <div class="ibm-main">
                          <a class="ibm-access" id="overlaylink2"><!-- Accessibility anchor --></a> 
                          <div class="ibm-title">
                            <h1>Choose your display name carefully...</h1>
                          </div>
                          <div class="ibm-container ibm-alternate">
                            <div class="ibm-container-body">
                              <p>Your display name accompanies the content that you post on developerWorks. Other users will recognize and associate your display name with you. Your display name:</p>
                              <p>
                                </p><ul>
                                  <li>Easily and publicly identifies you. Samples: brenny, JeffJ, lindameyer, and Michael_OConnell</li>
                                  <li>Should not be your email address (for privacy reasons)</li>
                                  <li>You can change your display name in your profile</li>
                                </ul>
                              <p></p>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="ibm-footer"></div>
                    </div>
                    <!-- SUPPLEMENTAL OVERLAYS END HERE -->
                    <p>
                      <label for="countryResidence">Country/region of residence:<span class="ibm-required">*</span><br>
                        <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Required for warranty)</span>
                      </label>
                      <span>
                        <select name="CountryOfRes" id="countryResidence" onblur="validateCountry();">                      
                            <option value="" ${b.countryOfRes.equals("") ? 'selected="selected"' : ''}>Select one</option>                        
                            <option value="CA"${b.countryOfRes.equals("CA") ? 'selected="selected"' : ''}>Canada</option>
                            <option value="CN"${b.countryOfRes.equals("CN") ? 'selected="selected"' : ''}>China</option>
                            <option value="FR"${b.countryOfRes.equals("FR") ? 'selected="selected"' : ''}>France</option>
                            <option value="DE"${b.countryOfRes.equals("DE") ? 'selected="selected"' : ''}>Germany</option>
                            <option value="US"${b.countryOfRes.equals("US") ? 'selected="selected"' : ''}>United States</option>
                        </select>
                      </span>
                      <span id="country_invalid" style="display:none;color:red;">Please select a country.</span>
                    </p>
                    <div class="ibm-columns">
                      <div class="ibm-col-2-1">
                        <p>
                          <label for="City">City:</label>
                          <span><input name="City" id="City" size="36" type="text" value="${b.city}"></span>
                        </p>
                      </div>                  
                      <div class="ibm-col-2-1">
                        <p>
                          <label for="Language">Language:<span class="ibm-required">*</span></label>
                          <span>
                              <select name="Language" value="${b.language}"id="Language" onblur="validateLang();">
                                  <option value="" ${b.language.equals("") ? 'selected="selected"' : '' }>Select one</option>
                              <option value="de-CH"${b.language.equals("de-CH") ? 'selected="selected"' : '' }>Chinese</option>
                              <option value="en-US"${b.language.equals("en-US") ? 'selected="selected"' : '' }>English</option>
                              <option value="fr-FR"${b.language.equals("fr-FR") ? 'selected="selected"' : '' }>French</option>
                              <option value="de-GE"${b.language.equals("de-GE") ? 'selected="selected"' : '' }>German</option>
                              <option value="de-UZ"${b.language.equals("de-UZ") ? 'selected="selected"' : '' }>Uzbek</option>
                            </select>
                          </span>
                          <span id="lang_invalid" style="display:none;color:red;">Please select a language.</span>
                        </p>
                      </div>
                    </div>
                    <p>Please select a security question that only you can answer or create your own. Then enter the answer to the question. Occasionally, you may be asked to answer this question to confirm your identity.</p>
                    <div class="ibm-columns">
                      <div class="ibm-col-2-1">
                        <p>
                          <label for="SecurityQues">Security question:<span class="ibm-required">*</span></label>
                          <span>
                            <select name="SecurityQues" id="SecurityQues" onblur="removetempfunction()">
                                <option value="" ${b.sercurityQues.equals("") ? 'selected="selected"' : ''}>Select one</option>
                              <option value="name" ${b.sercurityQues.equals("name") ? 'selected="selected"' : ''}>What is your mother's maiden name?</option>
                              <option value="pet" ${b.sercurityQues.equals("pet") ? 'selected="selected"' : ''}>What is the name of your first pet?</option>
                              <option value="school" ${b.sercurityQues.equals("school") ? 'selected="selected"' : ''}>What was the name of your first school?</option>
                              <option value="job"${b.sercurityQues.equals("job") ? 'selected="selected"' : ''}>In what city or town was your first job?</option>
                              <option value="country"${b.sercurityQues.equals("country") ? 'selected="selected"' : ''}>In what country were you born?</option>
                            </select>
                          </span>
                           <span id="question_invalid" style="display:none;color:red;">Please select a question.</span>
                        </p>
                      </div>
                      <div class="ibm-col-2-1">
                        <p id="customquestioncontainer" style="display:none;">
                          <label for="custom_question">Place a question in this text field.</label>
                          <span><input name="custom_question" id="custom_question" size="42" type="text" value=""></span>
                        </p>
                      </div>
                    </div>
                    <p>
                      <label for="SecurityAns">Answer to security question:<span class="ibm-required">*</span></label>
                      <span><input name="SecurityAns" id="SecurityAns" size="42" type="text" value="${b.securityAns}" aria-required="true" onblur="validateAns();"></span>
                    </p>

                    <span id="ans_invalid" style="display:none;color:red;">Answer is invalid.</span>

                    <div class="dw-lc-spacevertical">&nbsp;</div>               
                    <h2 class="ibm-alternate-rule">Privacy preferences</h2>
                    <div id="privacyid">
                      <p>Please keep me informed of products, services and offerings from IBM companies worldwide.</p>
                      <p>
                      <span class="ibm-input-group">
                          <input id="NC_CHECK_EMAIL" value="0" name="NC_CHECK_EMAIL" type="checkbox" ${b.contactEmail != null ? 'checked="checked"' : ""}>
                      <label for="NC_CHECK_EMAIL">by email.</label></span><br>
                      <span class="ibm-input-group">
                      <input id="NC_CHECK_OTHER" value="4" name="NC_CHECK_OTHER" type="checkbox" ${b.contactOther != null ? 'checked="checked"' : ""}>
                      <label for="NC_CHECK_OTHER">by telephone or postal mail.</label></span><br>
                      </p>
                      <p>I accept&nbsp; <a href="http://www.ibm.com/privacy/us/en/" target="_blank">IBM's Privacy statement</a>.</p>
                      <p>All fields are required to complete this transaction.</p>
                    </div>
                    <div class="ibm-alternate-rule"><hr></div>
                    <p>By selecting the <strong>Register</strong> link, I agree to the developerWorks&nbsp;<a class="ibm-feature-link" href="https://www.ibm.com/developerworks/mydeveloperworks/terms?lang=en">terms of use</a>.</p>
                    <div class="ibm-buttons-row">
                      <p>
                        <input id="ibm-submit" name="ibm-submit" class="ibm-btn-arrow-pri" value="Register" type="submit">
                        <span class="ibm-sep"></span>
                        <input value="Cancel" type="button" name="ibm-cancel" class="ibm-btn-cancel-sec" onclick="window.location(window.location.href = &#39;http://www.ibm.com/developerworks/topics/&#39;)">
                      </p>
                      <span class="ibm-sep"></span>
                      <input type="button" value="Count Fields" onclick="displayAlert()">
                    </div>
                    <div class="dw-lc-spacevertical">&nbsp;</div><div class="dw-lc-spacevertical">&nbsp;</div>
                  </form>     
                </div>
            <!-- End 6-4 grid -->             
              </div>
            </div>
          </div>
          <div id="ibm-content-sidebar">
            <div id="ibm-contact-module">
              <!--IBM contact module-->
            </div>
            <div id="ibm-merchandising-module">
              <!--IBM Web Merchandising Module-->
            </div>        
          </div>
        </div> 
      </div>
    </div>
  </div>
  <div id="ibm-metrics">
    <script type="text/javascript" src="./files/stats.js"></script>
  </div>
</body>
</html>
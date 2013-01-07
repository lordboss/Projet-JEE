setLogin = function() {
  var form = $("#login-area > div");
  if ($(form).length > 0) {
    var login    = $(form).children('input[type=text]');
    var password = $(form).children('input[type=password]');
    $(login).val(defaultPseudo);
    $(login).focus(function() {
      if ($(this).val() === defaultPseudo)  $(this).val('');
    });
    $(login).blur (function() {
      if ($(this).val() === '')  $(this).val(defaultPseudo);
    });
    $(password).val(defaultPassword);
    $(password).focus(function() {
      if ($(this).val() === defaultPassword)  $(this).val('');
    });
    $(password).blur (function() {
      if ($(this).val() === '')  $(this).val(defaultPassword);
    });
  }
};

lostPasswordRequest = function() {
  $("#errors").hide();
  var ok = true;
  if ($("#lost-password input[type=text]").val().length < 4) { ok = false;
    $("#errors").text('Votre pseudo fait au moins 4 caracteres !');
  } else if (!isRFC822ValidEmail($("#lost-password input[name=email]").val())) { ok = false;
    $("#errors").text('Le courriel entré est invalide !');
  }

  if (!ok) {
    $("#errors").slideDown('normal', function() {
      $(this).delay(2000).slideUp('slow');
    });
  } else {
    $("#lost-password form").submit();
  }
};

setLostPassword = function() {
  var form = $("#lost-password form");
  if ($(form).length > 0) {
    $("#lost-password .submit-button").click(lostPasswordRequest);
  }
};
//verification du courriel (fonction de hibernate validator tapestry)
isRFC822ValidEmail = function (sEmail) {
  var sQtext = '[^\\x0d\\x22\\x5c\\x80-\\xff]';
  var sDtext = '[^\\x0d\\x5b-\\x5d\\x80-\\xff]';
  var sAtom = '[^\\x00-\\x20\\x22\\x28\\x29\\x2c\\x2e\\x3a-\\x3c\\x3e\\x40\\x5b-\\x5d\\x7f-\\xff]+';
  var sQuotedPair = '\\x5c[\\x00-\\x7f]';
  var sDomainLiteral = '\\x5b(' + sDtext + '|' + sQuotedPair + ')*\\x5d';
  var sQuotedString = '\\x22(' + sQtext + '|' + sQuotedPair + ')*\\x22';
  var sDomain_ref = sAtom;
  var sSubDomain = '(' + sDomain_ref + '|' + sDomainLiteral + ')';
  var sWord = '(' + sAtom + '|' + sQuotedString + ')';
  var sDomain = sSubDomain + '(\\x2e' + sSubDomain + ')*';
  var sLocalPart = sWord + '(\\x2e' + sWord + ')*';
  var sAddrSpec = sLocalPart + '\\x40' + sDomain; // complete RFC822 email address spec
  var sValidEmail = '^' + sAddrSpec + '$'; // as whole string

  var reValidEmail = new RegExp(sValidEmail);

  if (reValidEmail.test(sEmail)) {
    return true;
  }

  return false;
};
showErrors = function() {
  $("#errors").slideDown('normal', function() {
    $(this).delay(2000).slideUp('slow');
  });
};

registrationNextPane = function(event, i) {
  $("#errors").hide();
  var ok = true;
  if (i === 1) { // On va vers le panel 1
    if ($("#registration input[name=login]").val().length < 4) {
      ok = false;
      $("#errors").text('Le pseudo doit faire au moins 4 caracteres !');
    } else if (!isRFC822ValidEmail($("#registration input[name=email]").val())) {
      ok = false;
      $("#errors").text('Le courriel entré est invalide !');
    } else if ($("#registration input[name=pwd]").val().length < 4) {
      ok = false;
      $("#errors").text('Le mot de passe doit faire au moins 4 caracteres !');
    } else if ($("#registration  input[name=pwd]").val() !== $("#registration input[name=pwdc]").val()) {
      ok = false;
      $("#errors").text('Les mots de passes doivent etre identiques !');
    }
  } else if (i === 2) { // On va vers le panel 2 (le dernier)
    if ($("input[name=firstName]").val() === "") {
      ok = false;
      $("#errors").text('Vous devez entrer votre prenom.');
    } else if ($("input[name=lastName]").val() === "") {
      ok = false;
      $("#errors").text('Vous devez entrer votre nom de famille.');
    } else if ($("input[name=add]").val() === "") {
      ok = false;
      $("#errors").text('Vous devez entrer votre adresse complete.');
    } else if ($("input[name=ptc]").val() === "") {
      ok = false;
      $("#errors").text('Vous devez entrer votre code postal.');
    } else if ($("input[name=country]").val() === "") {
      ok = false;
      $("#errors").text('Vous devez preciser le pays dans lequel vous vivez.');
    }
  } else if (i === 3) {
    if (!$("input[name=termsAccepted]").is(":checked")) {
      ok = false;
      $("#errors").text('Vous devez accepter les conditions generales d\'utilisation pour creer un compte.');
    } else {
      $("#registration form").submit();
    }
  }
  if (!ok) {
    showErrors();
  }

  return ok;
};

setRegistration = function() {
  if ($("#registration").length > 0) {
    $("form").scrollable({
      onBeforeSeek:registrationNextPane
    });

    // Le login existe-t-il deja  ?
    $("#registration input[name=login]").blur(function() {
      var input = $(this);
      var vlogin = $(input).val();
      if (vlogin.length > 3) {
        doProgress($(input));
        $.post("checklogin.htm", { login:vlogin }, function(xml) {
            var r = $(xml).find('result').text() === "0"; // n'existe pas
            if (r) {
              successProgress($(input));
            } else {
              failProgress($(input));
              $("#errors").text("Attention ! Le pseudo que vous avez entré est deja  utilise !");
              showErrors();
            }
          }
        );
      }
    });

    // L'email existe-t-il déjà  ?
    $("#registration input[name=email]").blur(function() {
      var input = $(this);
      var vemail = $(input).val();
      if (vemail.length > 3) {
        doProgress($(input));
        $.post("checkemail.htm", { email:vemail }, function(xml) {
            var r = $(xml).find('result').text() === "0";  // n'existe pas
            if (r) {
              successProgress($(input));
            } else {
              failProgress($(input));
              $("#errors").text("Attention ! Le courriel que vous avez entré est déjà utilisé !");
              showErrors();
            }
          }
        );
      }
    });
  }
};

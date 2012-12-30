
submitClick = function(elt) {
  $("form").submit();
};

setLogin = function() {
  var form = $("form fieldset");
  if ($(form).length > 0) {
    var login    = $(form).children('input[type=text]');
    var password = $(form).children('input[type=password]');
    $(login).val(defaultPseudo);
    $(login).focus(function() { if ($(this).val() === defaultPseudo)  $(this).val(''); });
    $(login).blur (function() { if ($(this).val() ==='')  $(this).val(defaultPseudo); });
    $(password).val(defaultPassword);
    $(password).focus(function() { if ($(this).val() ===defaultPassword)  $(this).val(''); });
    $(password).blur (function() { if ($(this).val() === '')  $(this).val(defaultPassword); });
  }
};

$(document).ready(function() {
  $(".submit-button").click(function() { submitClick($(this)); });
  setLogin();
});


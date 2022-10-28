var userAgent=navigator.userAgent,regexIe8=new RegExp("Trident(/4.0)|(Trident/5.0)");function IsValidName(s,a){s="username"===s.toLowerCase()?new RegExp(/[*\[\\\]\|\/\:\<\>\%\+\#\&\?\'\"\@\;\,]/):new RegExp(/[*\[\\\]\|\/\:\<\>\%\+\#\?\'\"\;\,]/);return!s.test(a)}function IsValidPassword(s){return!!passwordRegex.test(s)}function showPasswordPolicy(){var a=$("#new-password").val().trim(),e=new Array;e.push(validateUserpassword.p_policy_uppercase),e.push(validateUserpassword.p_policy_lowercase),e.push(validateUserpassword.p_policy_number),e.push(validateUserpassword.p_policy_specialcharacter),e.push(validateUserpassword.p_policy_length),$.each(e,function(s){s=e[s];null!=(ruleName=s(a))&&""!=ruleName?$("#new-password").next().find("#password_policy_rules").find("li#"+ruleName+" span:first").hasClass("su-password-tick")||$("#new-password").next().find("#password_policy_rules").find("li#"+ruleName+" span:first").addClass("su-password-tick").removeClass("icon"):(ruleName=name,$("#new-password").next().find("#password_policy_rules").find("li#"+ruleName+" span:first").hasClass("su-password-tick")&&$("#new-password").next().find("#password_policy_rules").find("li#"+ruleName+" span:first").removeClass("su-password-tick").addClass("icon")),ruleName=""})}function changePasswordValidation(){return showWaitingPopup("body"),$("#update-password-form").valid()}$(document).ready(function(){var s=new ejs.inputs.TextBox({cssClass:"e-outline e-custom e-account",floatLabelType:"Auto"});s.appendTo("#firstname"),s.appendTo("#lastname"),s.appendTo("#companyname"),s.appendTo("#phone"),s.appendTo("#new-password"),s.appendTo("#confirm-password"),new ejs.inputs.TextBox({cssClass:"e-outline e-custom e-account",floatLabelType:"Always",created:function(){outlineEmail.focusIn()}}).appendTo("#key-input"),$.validator.addMethod("isValidName",function(s,a){return IsValidName("name",s)},window.Server.App.LocalizationContent.AvoidSpecialCharactors),$.validator.addMethod("additionalSpecialCharValidation",function(s,a){if(/^[a-zA-Z_0-9`~!\$\^()=\-\.\{\} ]+$/.test(s)||""===s)return!0},window.Server.App.LocalizationContent.AvoidSpecialCharactors),$.validator.addMethod("isValidPassword",function(s,a){return IsValidPassword(s)},""),$.validator.addMethod("isValidPassword",function(s,a){var e=new Array;if(e.push(validateUserpassword.p_policy_uppercase),e.push(validateUserpassword.p_policy_lowercase),e.push(validateUserpassword.p_policy_number),e.push(validateUserpassword.p_policy_specialcharacter),e.push(validateUserpassword.p_policy_length),passwordPolicyPopover("#new-password",s),$("#password_policy_rules li>span.su-password-tick").length==$("#password_policy_rules li>span:not(.content)").length)return!0},""),$("#update-password-form").validate({onkeyup:function(s,a){9!=a.keyCode&&(isKeyUp=!0,$(s).valid(),isKeyUp=!1)},onfocusout:function(s){$(s).valid()},onfocusin:function(s,a){"new-password"===a.target.id.toLowerCase()&&passwordPolicyPopover("#new-password",$("#new-password").val())},rules:{"first-name":{required:!0,isValidName:!0,additionalSpecialCharValidation:!0},"last-name":{isValidName:!0,additionalSpecialCharValidation:!0},"company-name":{required:!0},password:{required:!0,isValidPassword:!0},"re-password":{required:!0,equalTo:"#new-password"}},messages:{"first-name":{required:window.Server.App.LocalizationContent.FirstNameValidator},"company-name":{required:window.Server.App.LocalizationContent.CompanyNameValidator},password:{required:window.Server.App.LocalizationContent.NewPasswordValidator,isValidPassword:window.Server.App.LocalizationContent.InvalidPasswordValidator},"re-password":{required:window.Server.App.LocalizationContent.ConfirmNewPassword,equalTo:window.Server.App.LocalizationContent.PasswordMismatch}},highlight:function(s){$(s).closest("div").addClass("e-error"),passwordBoxHightlight(s)},unhighlight:function(s){passwordBoxUnhightlight(s),$(s).closest("div").removeClass("e-error"),$(s).parents(".update-form-input-field").find("div.validation-holder").find("span").html("")},errorElement:"span",errorPlacement:function(s,a){$(a).parents(".update-form-input-field").find("div.validation-holder").find("span").html(s.html()),hideWaitingPopup("body")}})}),$(function(){$(document).on("click",".show-hide-password",function(){$(this).siblings().find("input").is(":password")?($(this).siblings().find("input").attr("type","text"),$(this).removeClass("su-show").addClass("su-hide").attr("data-original-title",window.Server.App.LocalizationContent.ClicktoHide)):($(this).siblings().find("input").attr("type","password"),$(this).removeClass("su-hide").addClass("su-show").attr("data-original-title",window.Server.App.LocalizationContent.ClicktoView)),$(this).tooltip("show")}),$(document).on("touch",".show-hide-password",function(){$(this).siblings().find("input").is(":password")?($(this).siblings().find("input").attr("type","text"),$(this).removeClass("su-show"),$(this).addClass("su-hide")):($(this).siblings().find("input").attr("type","password"),$(this).removeClass("su-hide"),$(this).addClass("su-show"))})});var validateUserpassword={p_policy_uppercase:function(s){this.name="p_policy_uppercase";if(/^(?=.*[A-Z]).+$/.test(s))return"p_policy_uppercase"},p_policy_lowercase:function(s){this.name="p_policy_lowercase";if(/^(?=.*[a-z]).+$/.test(s))return"p_policy_lowercase"},p_policy_number:function(s){this.name="p_policy_number";if(/^(?=.*\d).+$/.test(s))return"p_policy_number"},p_policy_specialcharacter:function(s){this.name="p_policy_specialcharacter";if(/^(?=.*(_|[^\w])).+$/.test(s))return"p_policy_specialcharacter"},p_policy_length:function(s){if(this.name="p_policy_length",s.length>=$('meta[name="password_policy:minlength"]').attr("content"))return"p_policy_length"}};function passwordPolicyPopover(s,a){var e=$(s),i=(e.popover("show"),new Array);i.push(validateUserpassword.p_policy_uppercase),i.push(validateUserpassword.p_policy_lowercase),i.push(validateUserpassword.p_policy_number),i.push(validateUserpassword.p_policy_specialcharacter),i.push(validateUserpassword.p_policy_length),$.each(i,function(s){s=i[s];null!=(ruleName=s(a))&&""!=ruleName?e.next().find("#password_policy_rules").find("li#"+ruleName+" span:first").hasClass("su-password-tick")||e.next().find("#password_policy_rules").find("li#"+ruleName+" span:first").addClass("su-password-tick").removeClass("icon"):(ruleName=name,e.next().find("#password_policy_rules").find("li#"+ruleName+" span:first").hasClass("su-password-tick")&&e.next().find("#password_policy_rules").find("li#"+ruleName+" span:first").removeClass("su-password-tick").addClass("icon")),ruleName=""})}function passwordBoxUnhightlight(s){var a="",e=($(s).closest("div").removeClass("e-error"),"popover"===$("#new-password").data("toggle")),i=e?$("#password_policy_rules").find("li>span:not(.content)"):$("#password_policy_rules").find("li>span"),o=e?"su-password-tick":"su-tick";if("new-password"==$(s).attr("id")){for(var r=0;r<i.length;r++)$(i[r]).attr("class")!=o&&(a="[[[unsatisfied-rule]]]"),$(i[r]).attr("class")==o&&$(s).closest("div").removeClass("e-error");""!=a&&null!=a&&($(s).closest("div").addClass("e-error"),a="")}$(s).closest("div").find(".password-validate-holder").html("")}function passwordBoxHightlight(s){var a="",e=($(s).closest("div").addClass("e-error"),"popover"===$("#new-password").data("toggle")),i=e?$("#password_policy_rules").find("li>span:not(.content)"):$("#password_policy_rules").find("li>span"),o=e?"su-password-tick":"su-tick";if("new-password"==$(s).attr("id")){for(var r=0;r<i.length;r++)$(i[r]).attr("class")==o?$(s).closest("div").removeClass("e-error"):a="[[[unsatisfied-rule]]]";""!=a&&null!=a&&$(s).closest("div").addClass("e-error")}}
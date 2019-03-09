$(document).ready(function() {
    // Getting references to our form and input
    var signUpForm = $("form.signup");
    var trainerInput = $("input#trainer-input");
    var emailInput = $("input#email-input");
    var passwordInput = $("input#password-input");
  
    // When the signup button is clicked, we validate the trainer name, email and password are not blank
    signUpForm.on("submit", function(event) {
      event.preventDefault();
      var userData = {
        trainer: trainerInput.val().trim(),
        email: emailInput.val().trim(),
        password: passwordInput.val().trim()
      };
  
      if (!userData.trainer || !userData.email || !userData.password) {
        return;
      }
      // If we have a trainer name, email and password, run the signUpUser function
      signUpUser(userData.trainer, userData.email, userData.password);
      trainerInput.val("");
      emailInput.val("");
      passwordInput.val("");
    });
  
    // Does a post to the signup route. If successful, we are redirected to the members page
    // Otherwise we log any errors
    function signUpUser(trainer, email, password) {
      $.post("/api/signup", {
        trainer: trainer,
        email: email,
        password: password
      }).then(function(data) {
        window.location.replace(data);
        // If there's an error, handle it by throwing up a bootstrap alert
      }).catch(handleLoginErr);
    }
  
    function handleLoginErr(err) {
      $("#alert .msg").text(err.responseJSON);
      $("#alert").fadeIn(500);
    }
  });
  

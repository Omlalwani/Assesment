function validateForm() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    // Check if email is valid
    if (!validateEmail(email)) {
        document.getElementById("emailError").innerText = "Invalid email format";
        return false;
    } else {
        document.getElementById("emailError").innerText = "";
    }

    // Check if password and confirm password match
    if (password !== confirmPassword) {
        alert("Password and Confirm Password do not match");
        return false;
    }

    return true;
}

function validateEmail(email) {
    // You can add a more robust email validation regex if needed
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function checkEmail() {
    var email = document.getElementById("email").value;

    // Use AJAX to check if the email is already registered
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = xhr.responseText;
            if (response === "exists") {
                document.getElementById("emailError").innerText = "Email already registered";
            } else {
                document.getElementById("emailError").innerText = "";
            }
        }
    };
    xhr.open("GET", "CheckEmailServlet?email=" + email, true);
    xhr.send();
}

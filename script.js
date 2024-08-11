document.getElementById('registrationForm').addEventListener('submit', function(event) {
    event.preventDefault();

    // Get form elements
    const name = document.getElementById('name').value.trim();
    const email = document.getElementById('email').value.trim();
    const password = document.getElementById('password').value.trim();

    // Validation flags
    let valid = true;

    // Validate Name
    if (name === '') {
        document.getElementById('nameError').textContent = 'Name is required';
        document.getElementById('nameError').style.display = 'block';
        valid = false;
    } else {
        document.getElementById('nameError').style.display = 'none';
    }

    // Validate Email
    const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (email === '') {
        document.getElementById('emailError').textContent = 'Email is required';
        document.getElementById('emailError').style.display = 'block';
        valid = false;
    } else if (!email.match(emailPattern)) {
        document.getElementById('emailError').textContent = 'Invalid email address';
        document.getElementById('emailError').style.display = 'block';
        valid = false;
    } else {
        document.getElementById('emailError').style.display = 'none';
    }

    // Validate Password
    if (password === '') {
        document.getElementById('passwordError').textContent = 'Password is required';
        document.getElementById('passwordError').style.display = 'block';
        valid = false;
    } else if (password.length < 6) {
        document.getElementById('passwordError').textContent = 'Password must be at least 6 characters long';
        document.getElementById('passwordError').style.display = 'block';
        valid = false;
    } else {
        document.getElementById('passwordError').style.display = 'none';
    }

    // If all validations pass
    if (valid) {
        alert('Form submitted successfully!');
        document.getElementById('registrationForm').reset();  // Reset form after submission
    }
});

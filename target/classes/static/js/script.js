// Get DOM elements
const loginModal = document.getElementById('loginModal');
const loginForm = document.getElementById('loginForm');
const registrationForm = document.getElementById('registrationForm');
const doctorFields = document.getElementById('doctorFields');
let currentUserType = '';

// Show login modal
function showLoginModal() {
    loginModal.style.display = 'block';
    loginForm.classList.add('hidden');
    registrationForm.classList.add('hidden');
}

// Close login modal
function closeLoginModal() {
    loginModal.style.display = 'none';
    loginForm.reset();
    registrationForm.reset();
    doctorFields.classList.add('hidden');
}

// Show login form based on user type
function showLoginForm(userType) {
    currentUserType = userType;
    loginForm.classList.remove('hidden');
    registrationForm.classList.add('hidden');
    document.querySelector('.login-container h2').textContent = `${userType.charAt(0).toUpperCase() + userType.slice(1)} Login`;
}

// Show registration form
function showRegistrationForm() {
    loginForm.classList.add('hidden');
    registrationForm.classList.remove('hidden');
    if (currentUserType === 'doctor') {
        doctorFields.classList.remove('hidden');
    } else {
        doctorFields.classList.add('hidden');
    }
}

// Handle login form submission
loginForm.addEventListener('submit', function(e) {
    e.preventDefault();
    
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    
    // Here you would typically make an API call to verify credentials
    // For demo purposes, we'll just show an alert
    alert(`${currentUserType.charAt(0).toUpperCase() + currentUserType.slice(1)} login attempted with username: ${username}`);
    
    // Close modal and reset form
    closeLoginModal();
});

// Handle registration form submission
registrationForm.addEventListener('submit', function(e) {
    e.preventDefault();
    
   
    const email = document.getElementById('signupEmail').value;
    const username = document.getElementById('signupUsername').value;
    const password = document.getElementById('signupPassword').value;
    
    // Collect doctor-specific information if applicable
    let additionalInfo = {};
    if (currentUserType === 'doctor') {
        additionalInfo = {
            specialization: document.getElementById('specialization').value
        };
    }
    
    // Here you would typically make an API call to create the account
    // For demo purposes, we'll just show an alert
    alert(`${currentUserType.charAt(0).toUpperCase() + currentUserType.slice(1)} account created for: ${fullName}`);
    
    // Switch back to login form
    showLoginForm(currentUserType);
    registrationForm.reset();
});

// Close modal when clicking outside
window.addEventListener('click', function(e) {
    if (e.target === loginModal) {
        closeLoginModal();
    }
});

// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Add scroll event listener for navbar
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 50) {
        navbar.style.background = 'rgba(255, 255, 255, 0.95)';
    } else {
        navbar.style.background = 'white';
    }
});

// Emergency button click handler
document.querySelectorAll('.emergency-btn').forEach(button => {
    button.addEventListener('click', function() {
        alert('Redirecting to emergency guidelines...');
        // Here you would typically redirect to a detailed emergency guidelines page
    });
}); 
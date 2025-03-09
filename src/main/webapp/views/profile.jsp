<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthCare Plus - Your Trusted Medical Partner</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <h1>HealthCare<span>Plus</span></h1>
        </div>
        <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About Us</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#emergency">Emergency</a></li>
            <li class="auth-buttons">
                <a href= "loginPage"><button class="login-btn " style="background-color:red">LogOut</button></a>
            </li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-content">
            <h1>Welcome to HealthCare Plus</h1>
            <p>Your health is our top priority. Get access to world-class medical care.</p>
            <button class="cta-btn" onclick="showLoginModal()">Get Started</button>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <h2>About Us</h2>
        <div class="about-content">
            <div class="about-text">
                <p>HealthCare Plus is a leading healthcare provider committed to delivering exceptional medical services. With state-of-the-art facilities and experienced medical professionals, we ensure the highest quality of patient care.</p>
                <ul>
                    <li>24/7 Medical Support</li>
                    <li>Expert Doctors</li>
                    <li>Modern Facilities</li>
                    <li>Patient-Centered Care</li>
                </ul>
            </div>
            <div class="about-image">
                <img src="https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500" alt="Medical Team">
            </div>
        </div>
    </section>

    <!-- Emergency Section -->
    <section id="emergency" class="emergency">
        <h2>Emergency Services</h2>
        <div class="emergency-content">
            <div class="emergency-card">
                <i class="fas fa-phone"></i>
                <h3>Emergency Hotline</h3>
                <p>24/7 Emergency: <strong>911</strong></p>
                <p>Ambulance: <strong>+1-555-0123</strong></p>
            </div>
            <div class="emergency-card">
                <i class="fas fa-hospital"></i>
                <h3>Emergency Room</h3>
                <p>Open 24/7</p>
                <p>Immediate Medical Attention</p>
            </div>
            <div class="emergency-card">
                <i class="fas fa-first-aid"></i>
                <h3>First Aid Tips</h3>
                <p>Basic emergency guidelines</p>
                <button class="emergency-btn">Learn More</button>
            </div>
        </div>
    </section>

    <!-- Login Modal -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeLoginModal()">&times;</span>
            <div class="login-container">
                <h2>Login</h2>
                <div class="login-options">
                </div>
                <form id="loginForm" class="hidden">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" required>
                    </div>
                    <button type="submit" class="login-submit">Login</button>
                    <p class="form-footer">Not registered? <button type="button" class="text-button" > <a href="regPage"> Create an account</a></button></p>
                </form>

                <!-- Registration Form (Initially Hidden) -->
                <!--form id="registrationForm" class="hidden">
                    <h3>Create New Account</h3>
                    <div class="form-group">
                        <label for="fullName">Full Name:</label>
                        <input type="text" id="fullName" required>
                    </div>
                    <div class="form-group">
                        <label for="signupEmail">Email:</label>
                        <input type="email" id="signupEmail" required>
                    </div>
                    <div class="form-group">
                        <label for="signupUsername">Username:</label>
                        <input type="text" id="signupUsername" required>
                    </div>
                    <div class="form-group">
                        <label for="signupPassword">Password:</label>
                        <input type="password" id="signupPassword" required>
                    </div>
                    <div id="doctorFields" class="hidden">
                        <div class="form-group">
                            <label for="specialization">Specialization:</label>
                            <input type="text" id="specialization">
                        </div>
                        <div class="form-group">
                            <label for="licenseNumber">License Number:</label>
                            <input type="text" id="licenseNumber">
                        </div>
                    </div>
                    <button type="submit" class="signup-submit">Create Account</button>
                    <p class="form-footer">Already have an account? <button type="button" class="text-button" onclick="showLoginForm(currentUserType)">Login here</button></p>
                </form-->
            </div>
        </div>
    </div>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p>Email: info@healthcareplus.com</p>
                <p>Phone: +1-555-0123</p>
                <p>Address: 123 Medical Center Drive</p>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#emergency">Emergency</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Follow Us</h3>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 HealthCare Plus. All rights reserved.</p>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html> 
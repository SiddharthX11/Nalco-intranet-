<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Refinery.aspx.cs" Inherits="NALCO_Intranet_Refinery" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NALCO Intranet - Refinery</title>
    <style>
       * {
        box-sizing: border-box;
    }
    header {
        background: linear-gradient(to right, pink 0% 1%, maroon 38% 100%);
        padding: 0.25rem;
        color: black;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        width: 100%;
        box-sizing: border-box;
    }
    header h1 {
        margin: 0;
        font-size: 20px;
        display: flex;
        align-items: center;
    }
    header .logo img {
        height: 40px;
        width: auto;
        vertical-align: middle;
        margin-right: 10px;
    }
    nav {
        flex-grow: 1;
        display: flex;
        justify-content: flex-end;
    }
    nav ul.nav-main {
        list-style: none;
        display: flex;
        gap: 1.5rem;
        margin: 0;
        padding: 0;
        flex-wrap: wrap;
        justify-content: center;
    }
    nav a {
        color: white;
        text-decoration: none;
        font-size: 1rem;
        position: relative;
    }
    nav a:hover::after {
        content: "";
        position: absolute;
        width: 100%;
        height: 2px;
        background: #ffffff;
        left: 0;
        bottom: -4px;
    }
    .dropdown-menu {
        display: none;
        position: absolute;
        background: white;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        padding: 0.5rem 0;
        min-width: 200px;
        z-index: 5;
        margin-left: -50px;
    }
    .dropdown.active .dropdown-menu {
        display: block;
    }
    .dropdown-menu a {
        display: block;
        padding: 0.5rem 1rem;
        color: #333;
    }
    @media (max-width: 1024px) {
        header {
            padding: 0.5rem;
        }
        nav ul.nav-main {
            gap: 1rem;
        }
    }
    @media (max-width: 768px) {
        header {
            flex-direction: column;
            align-items: center;
        }
        nav {
            width: 100%;
            margin-top: 0.5rem;
        }
        nav ul.nav-main {
            flex-direction: column;
            align-items: center;
            gap: 0.5rem;
            width: 100%;
        }
    }
    @media (max-width: 480px) {
        header h1 {
            font-size: 18px;
        }
        header .logo img {
            height: 30px;
        }
        nav a {
            font-size: 0.9rem;
        }
        nav ul.nav-main {
            gap: 0.3rem;
        }
    }




.top-section {
    display: flex;
    gap: 1rem;
    width: 100%;
    height: 300px; /* Fixed height for top section */
    margin-top: 2%;
}

.card {
    background: white;
    padding: 1.5rem;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    position: relative;
}

.emergency-contact {
    width: 37%; /* Adjusted to fit layout */
    height: 100%;
}

.emergency-contact img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 8px;
}

.production-figures {
    width: 30%; /* Adjusted to fit layout */
    height: 100%; /* Full height of the top section */
    display: flex;
    flex-direction: column;
}

.production-figures .image-section {
    height: 70%; /* Upper half for the image */
    overflow: hidden;
}

.production-figures .image-section img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 8px 8px 0 0;
}

.production-figures .button-section {
    height: 35%; /* Lower half for the buttons */
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    padding: 0.5rem 0;
}

.production-figures .button-section button {
    margin: 5px 0;
    margin-left:2%;
    padding: 10px 15px;
    background-color: maroon;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 50%;
    box-sizing: border-box;
}

.birthdays {
    width: 30%; /* Rightmost 30% width */
    height: 100%; /* Full height of top section */
    background-size: cover;
    color: #333;
    position: relative;
}

.birthdays h3 {
    background: maroon;
    color: white;
    padding: 0.2rem;
    margin: -1.5rem -1.5rem 1rem;
    text-align: center;
}

.birthdays::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.3);
    z-index: 1;
}

.birthdays > * {
    position: relative;
    z-index: 2;
}

.scroll-container {
    height: calc(100% - 2.2rem);
    overflow: hidden;
    position: relative;
    padding-bottom: 40px;
}

.scroll-list {
    list-style: none;
    padding-bottom: 2px;
    margin: 0;
    animation: infiniteScroll linear infinite;
    width: 100%;
    display: flex;
    flex-direction: column;
    margin-left: -40px;
}

.scroll-list li {
    padding: 0.2rem;
    border-bottom: 1px solid #e0e0e0;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    height: 100%;
    flex-shrink: 0;
    justify-content: space-between;
}

.scroll-list li img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
    flex-shrink: 0;
}

.scroll-list li .info {
    flex-grow: 1;
    text-align: left;
}

.birthdays .scroll-list li .info .employee-name {
    font-size: 1.2rem;
    font-weight: bold;
    display: block;
}

.birthdays .scroll-list li .info .designation {
    font-size: 0.9rem;
    color: #555;
    display: block;
}

@keyframes infiniteScroll {
    0% { transform: translateY(0); }
    100% { transform: translateY(-50%); }
}

.scroll-container:hover .scroll-list {
    animation-play-state: paused;
}

@media (max-width: 768px) {
    .top-section {
        flex-direction: column;
        height: auto;
    }
    .emergency-contact, .production-figures, .birthdays {
        width: 100%;
        height: auto;
    }
    .emergency-contact img {
        height: 200px;
    }
    .production-figures .image-section img {
        height: 200px;
    }
    .production-figures .button-section {
        height: auto;
    }
    .birthdays {
        height: 250px;
    }
}

@media (max-width: 480px) {
    .birthdays .scroll-list li .info .employee-name {
        font-size: 1rem;
    }
    .birthdays .scroll-list li .info .designation {
        font-size: 0.8rem;
    }
    .scroll-list li img {
        width: 30px;
        height: 30px;
    }
}


 .middle-section {
        display: grid;
        grid-template-columns: repeat(5, 1fr);
        grid-template-rows: auto;
        gap: 1rem;
        padding: 1rem;
        margin-top: -3rem;
        width:87%;
    }

    .card {
        background: white;
        padding: 1rem;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        position: relative;
        height: 250px;
    }

    .notices, .circulars, .events, .login {
        width: 100%; /* 70% / 4 cards */
    }

    .card h3 {
        background: #8b0000;
        color: white;
        padding: 0.5rem;
        margin: -1rem -1rem 1rem;
        text-align: center;
        font-size: 1.1rem;
    }

    .scroll-container {
        height: calc(100% - 2.5rem);
        overflow: hidden;
        position: relative;
        padding-bottom: 40px;
    }

    .scroll-list {
        list-style: none;
        padding: 0;
        margin: 0;
        animation: infiniteScroll linear infinite;
        width: 100%;
    }

    .scroll-list li {
        padding: 0.5rem 0;
        border-bottom: 1px solid #e0e0e0;
    }

    .scroll-list li a {
        color: #333;
        text-decoration: none;
        display: block;
    }

    .scroll-list li a:hover {
        color: #8b0000;
    }

    .scroll-control-btn {
        position: absolute;
        bottom: 5px;
        right: 5px;
        background: transparent;
        color: #8b0000;
        border: none;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        font-size: 26px;
        cursor: pointer;
        z-index: 13;
    }

    .login-form {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .login-form label {
        font-weight: bold;
        color: #333;
        font-size: 0.9rem;
    }

    .login-form input {
        padding: 0.5rem;
        border: 1px solid #e0e0e0;
        border-radius: 4px;
        width: 100%;
        box-sizing: border-box;
    }

    .login-btn {
        background-color: #8b0000;
        color: white;
        padding: 0.5rem;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 1rem;
        margin-top: 0.5rem;
    }

    .calendar {
        width: 170%; /* 30% of the page */
        grid-column: 5 / 6;
        grid-row: 1 / 2;
    }

    .calendar-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 0.5rem;
    }

    .calendar-header button {
        background: none;
        border: none;
        font-size: 1.2rem;
        cursor: pointer;
        color: #8b0000;
    }

    .calendar-grid {
        display: grid;
        grid-template-columns: repeat(7, 1fr);
        text-align: center;
        gap: 2px;
    }

    .calendar-grid span {
        padding: 0.3rem;
        background: #f0f0f0;
        border-radius: 4px;
        font-size: 0.9rem;
    }

    @keyframes infiniteScroll {
        0% { transform: translateY(0); }
        100% { transform: translateY(-50%); }
    }

    .scroll-container:hover .scroll-list {
        animation-play-state: paused;
    }

    @media (max-width: 768px) {
        .middle-section {
            grid-template-columns: 1fr;
            grid-template-rows: auto;
        }
        .notices, .circulars, .events, .login, .calendar {
            width: 100%;
            height: auto;
        }
        .calendar {
            grid-column: 1 / 2;
            grid-row: auto;
            margin-top: 1rem;
        }
    }

    @media (max-width: 480px) {
        .card {
            padding: 0.8rem;
        }
        .card h3 {
            font-size: 1rem;
        }
        .login-form input {
            padding: 0.4rem;
        }
        .login-btn {
            padding: 0.4rem;
            font-size: 0.9rem;
        }
        .calendar-grid span {
            padding: 0.2rem;
            font-size: 0.8rem;
        }
    }



    </style>
</head>
<body>



<header>
    <h1 class="logo"><img src="Images/NALCO-Photoroom.png" alt="NALCO Logo" /></h1>
    <nav>
        <ul class="nav-main">
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
            <li><a href="#">Manuals</a></li>
        </ul>
    </nav>
</header>



  <div class="top-section">
    <div class="card emergency-contact">
        <img src="emergency.jpg" alt="Emergency Contact Numbers">
    </div>


   <div class="card production-figures">


    <div class="image-section">
        <img src="production.jpg" alt="Production Figures Table">
    </div>


    <div class="button-section">
        <button>Doctor's Availability</button>
        <button>Hospital Reports</button>
        <button>Lotus Notes</button>
        <button>Find Nalconian</button>
    </div>
</div>
   

    <div class="card birthdays">
        <h3>Birthdays</h3>
        <div class="scroll-container">
            <ul class="scroll-list">
                <li><img src="profile1.jpg" alt="Profile"><span class="info"><span class="employee-name">John Doe</span><span class="designation">Manager</span></span></li>
                <li><img src="profile2.jpg" alt="Profile"><span class="info"><span class="employee-name">Jane Smith</span><span class="designation">Engineer</span></span></li>
                <li><img src="profile3.jpg" alt="Profile"><span class="info"><span class="employee-name">Alice Johnson</span><span class="designation">HR</span></span></li>
            </ul>
        </div>
    </div>
</div>



    <section class="middle-section">
    <div class="card notices">
        <h3>Notices</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="notices-list">
                <li><a href="#">Online Submission of Sizes for Liveries - Apr 05, 2025</a></li>
                <li><a href="#">CSR Initiative Launch - Apr 15, 2025</a></li>
                <li><a href="#">IT System Upgrade - Apr 20, 2025</a></li>
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'notices-list')">⏸</button>
        </div>
    </div>

    <div class="card circulars">
        <h3>Circulars</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="circular-list">
                <li><a href="#">Safety Protocol Update - Mar 25, 2025</a></li>
                <li><a href="#">Employee Wellness Program - Apr 10, 2025</a></li>
                <li><a href="#">Online Submission of Sizes for Liveries - Apr 05, 2025</a></li>
                <li><a href="#">CSR Initiative Launch - Apr 15, 2025</a></li>
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'circular-list')">⏸</button>
        </div>
    </div>

    <div class="card events">
        <h3>Events</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="events-list">
                <li><a href="#">Cultural Fest - Apr 12, 2025</a></li>
                <li><a href="#">Training Workshop - Apr 25, 2025</a></li>
                <li><a href="#">B-Type Garages for Two Wheelers - Mar 22, 2025</a></li>
                <li><a href="#">Annual Sports Meet - Mar 30, 2025</a></li>
                <li><a href="#">Cultural Fest - Apr 12, 2025</a></li>
                <li><a href="#">Training Workshop - Apr 25, 2025</a></li>
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'events-list')">⏸</button>
        </div>
    </div>

    <div class="card login">
        <h3>Login To NALCOAPPS</h3>
        <form class="login-form">
            <label for="username">Username:</label>
            <input type="text" id="username" placeholder="Username" value="10435" required>
            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="Password" value="******" required>
            <button type="submit" class="login-btn">Login</button>
        </form>
    </div>

    <div class="card calendar" style="width: 15%;">
        <div class="calendar-header">
            <button id="prev-month">←</button>
            <span id="month-year"></span>
            <button id="next-month">→</button>
        </div>
        <div class="calendar-grid" id="calendar-grid">
            <span>Sun</span><span>Mon</span><span>Tue</span><span>Wed</span><span>Thu</span><span>Fri</span><span>Sat</span>
        </div>
    </div>
</section>





</body>
</html>

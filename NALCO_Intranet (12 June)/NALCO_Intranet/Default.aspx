<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="NALCO_Intranet_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NALCO Intranet</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" xintegrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
       body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        color: #333;
        width: 100%;
        height: 100vh;
        overflow-y: auto; /* Disable vertical scrolling */
        overflow-x: hidden;
    }

    /* Header */
    header {
        background: linear-gradient(to right, pink 0% 1%, maroon 38% 100%);
        padding: 0.25rem;
        color: black;
        display: flex;
        justify-content: space-between; /* Keeps logo and nav apart */
        align-items: center;
        flex-wrap: wrap;
        width: 100%;
        box-sizing: border-box;
    }

    /* Logo in Header */
    header .logo img {
        height: 40px;
        width: auto;
        vertical-align: middle;
    }

    /* Navigation */
    nav {
        flex-grow: 1; /* Allows nav to take available space */
        display: flex;
        
        justify-content:center; /* Centers the ul within nav */
    }

    nav ul.nav-main {
        list-style: none;
        display: flex;
        gap: 1.5rem;
        margin: 0;
        padding: 0;
        flex-wrap: wrap; /* Allows items to wrap if needed */
        justify-content: center; /* Centers the menu items horizontally */
    }
    nav a {
        color: white;
    text-decoration: none;
    font-size: 0.75rem;
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
        height:300px;
        overflow-y:auto;
    }

    .dropdown.active .dropdown-menu {
        display: block;
    }

    .dropdown-menu a {
        display: block;
        padding: 0.5rem 1rem;
        color: #333;
    }

    /* Media Queries for Responsiveness */
    @media (max-width: 1024px) {
        header {
            padding: 0.5rem;
        }

        nav ul.nav-main {
            gap: 1rem; /* Reduced gap for smaller screens */
        }
    }

    @media (max-width: 768px) {
        header {
            flex-direction: column; /* Stacks logo and nav vertically */
            align-items: center; /* Centers everything horizontally */
        }

        nav {
            width: 100%; /* Ensures nav takes full width */
            margin-top: 0.5rem; /* Adds spacing between logo and nav */
        }

        nav ul.nav-main {
            flex-direction: column; /* Stacks menu items vertically */
            align-items: center; /* Centers items horizontally */
            gap: 0.5rem; /* Smaller gap for mobile */
            width: 100%;
        }
    }

    @media (max-width: 480px) {
        header .logo img {
            height: 30px; /* Smaller logo for tiny screens */
        }

        nav a {
            font-size: 0.9rem; /* Slightly smaller text */
        }

        nav ul.nav-main {
            gap: 0.3rem; /* Even smaller gap */
        }
    }

        .container {
            max-width: 100%;
            margin: 0 auto;
            padding: 1rem;
        }

        .top-section, .middle-section, .bottom-section {
            display: flex;
            gap: 1rem;
            width: 100%;
        }

        .middle-section {
            margin-top: 10px;
            height: 80%;
        }

        .bottom-section {
            margin-top: 10px;
            margin-left:82%;
        }
        .bottom-section2{
            margin-top:-16%;
        }
        .slider-container {
            width: 81%;
            height: 300px;
            overflow: hidden;
            background-color: #e0e0e0;
        }

        .slider {
            display: flex;
            animation: slide 20s infinite;
        }

            .slider img {
                width: 100%;
                height: 370px;
                object-fit: cover;
                flex-shrink: 0;
            }

        .card {
            background: white;
            background-size: cover; /* Changed from 100% !important to cover */
            background-repeat: no-repeat !important;
            padding: 1rem;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25); /* Increased shadow strength */
            border-radius: 8px;
            position: relative; /* For absolute positioning of button */
            height: 250px; /* Set a consistent height for all cards except Login */
        }


        .middle-section .card:nth-child(1), /* Notices */
        .middle-section .card:nth-child(2), /* Circulars */
        .middle-section .card:nth-child(3), /* Events */
        .middle-section .card:nth-child(4) /* Login Form */ {
            height: 350px;
        }

        .card.calendar {
            width: 15%; /* Default for desktop */
            height: 220px;
            transition: width 0.3s ease;
        }

        .bottom-section {
            gap: 10px;
        }

        .cards-slider-container {
            position: relative;
        }




        @keyframes slide {
            0% {
                transform: translateX(0);
            }

            20% {
                transform: translateX(0);
            }

            25% {
                transform: translateX(-100%);
            }

            45% {
                transform: translateX(-100%);
            }

            50% {
                transform: translateX(-200%);
            }

            70% {
                transform: translateX(-200%);
            }

            75% {
                transform: translateX(-300%);
            }

            95% {
                transform: translateX(-300%);
            }

            100% {
                transform: translateX(0);
            }
        }

        .card {
            background: white;
            padding: 1.5rem;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25); /* Increased shadow strength */
            border-radius: 8px;
        }
        .cardcalendar {
            background: white;
            padding: 1.5rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top:-50px;
            height:240px;
        }

            .card h3 {
                margin-top: 0;
                color: #8B0000; /* Maroon text color */
                font-size: 1.2em;
                font-weight: 700;
                margin-bottom: 10px; /* Space below header */
                padding: 0 0 8px 0; /* Padding at the bottom, before the border */
                border-bottom: 2px solid #A52A2A; /* Brownish-red bottom border */
                text-align: center;
                text-transform: uppercase;
                background: none; /* No background color for the h3 itself */
            }

        /* Birthday and Superannuating Cards */
        .birthday-card {
            width: 30%; /* Default for desktop */
            background-size: cover;
            color: #333;
            position: relative;
            height: 250px;
            transition: width 0.3s ease;
        }

       .superannuation-card {
           width: 30%; /* Default for desktop */
           background-size: cover;
           color: #333;
           position: relative;
           height: 250px;
           transition: width 0.3s ease;
       }



            /* Birthday and Superannuating Card Headers */
            .superannuation-card h3 {
                background: maroon;
                color: white;
                padding: 0.2rem;
                margin: -10rem -1.5rem 1.5rem;
                text-align: center;
            }
            .birthday-card h3 {
                background: maroon;
                color: white;
                padding: 0.2rem;
                margin: -1.5rem -1.5rem 1rem;
                text-align: center;
            }

            .birthday-card::before, .superannuation-card::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(255, 255, 255, 0.3);
                z-index: 1;
            }

            .birthday-card > *, .superannuation-card > * {
                position: relative;
                z-index: 2;
            }

        /* Scroll Container Adjustments */
        .scroll-container {
            height: calc(100% - 2.2rem); /* Adjust for h3 and button */
            overflow: hidden;
            position: relative;
            margin-left: 0; /* Remove negative margin for responsiveness */
            overflow-x: auto;
            overflow-y: hidden;
        }

        .scroll-list {
            list-style: none;
            padding-bottom: 2px;
            margin: 0;
            /*animation: infiniteScroll linear infinite;*/
            width: 100%; /* Ensure it fills the width */
            background-size: cover !important;
            display: flex;
            flex-direction: column;
            margin-left: -40px;

        }

        .scroll-control-btn {
            position: absolute;
            bottom: 5px;
            right: 5px;
            background: #8b0000;
            color: white;
            border: none;
            border-radius: 50%;
            width: 25px;
            height: 25px;
            font-size: 12px;
            cursor: pointer;
            z-index: 13 !important;
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
            /* Added for hover effect */
            transition: background-color 0.3s ease; /* Removed transform */
        }

        .scroll-list li:hover {
            background-color: #e6e6e6; /* Lighter background on hover */
            /* transform: translateX(5px); Removed horizontal movement */
        }

            .scroll-list li .info {
                flex-grow: 1;
                text-align: left;
                margin-left: 0px;
                font-size:12px;
            }

            .scroll-list li .download-icon {
                cursor: pointer;
                font-size: 0.75rem;
                color: #8b0000;
                transition: color 0.3s ease;
            }
            /* Ticker Styles */
        .ticker-container {
            width: 79.9%;
            height: 40px;
            background: #8b0000;
            color: white;
            overflow: hidden;
            position: relative;
            margin-bottom: 1rem;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            margin-top:10px;
        }

        .ticker {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .ticker-list {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            animation: tickerScroll 20s linear infinite;
            white-space: nowrap;
        }

        .ticker-list li {
            display: inline-block;
            padding: 0 2rem;
            font-size: 1rem;
            line-height: 40px;
            flex-shrink: 0;
        }

        .ticker-container:hover .ticker-list {
            animation-play-state: paused;
        }

        .ticker-control-btn {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: transparent;
            color: white;
            border: none;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            font-size: 18px;
            cursor: pointer;
            z-index: 10;
        }

        .ticker-control-btn:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        @keyframes tickerScroll {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-50%);
            }
        }
            /* Specific styles for Birthday and Superannuating cards */
    .birthday-card .scroll-list li .info .employee-name,
    .superannuation-card .scroll-list li .info .employee-name {
        font-size: 1rem; 
        display: block; /* Ensures name takes its own line */
    }

    .birthday-card .scroll-list li .info .designation,
    .superannuation-card .scroll-list li .info .designation {
        font-size: 0.7rem; /* Smaller for designations */
        color: #555; /* Slightly muted color for contrast */
        display: block; /* Ensures designation takes its own line */
    }

    /* Responsive adjustments */
    @media (max-width: 480px) {
        .birthday-card .scroll-list li .info .employee-name,
        .superannuation-card .scroll-list li .info .employee-name {
            font-size: 1rem; /* Slightly smaller on mobile */
        }

        .birthday-card .scroll-list li .info .designation,
        .superannuation-card .scroll-list li .info .designation {
            font-size: 0.8rem; /* Even smaller on mobile */
        }

        .scroll-list li img {
            width: 30px;
            height: 30px;
        }


        /*/* Download Button */
        /*/*.download-btn {
    position: absolute;
    bottom: 5px;
    left: 5px;
    background: #8b0000;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 5px 10px;
    font-size: 12px;
    cursor: pointer;
    z-index: 13;*/
        }

        * /*/


/* Animation */
@keyframes infiniteScroll {
    0% { transform: translateY(0); }
    100% { transform: translateY(-50%); }
}

/* Media Queries */
@media (max-width: 1024px) {
    /* Tablet */
    header {
        padding: 0.5rem;
    }

    nav ul.nav-main {
        gap: 1rem;
    }

    .birthday-card, .superannuation-card {
        width: 25%;
        min-width: 200px;
    }

    .card.calendar {
        width: 25%;
        min-width: 200px;
    }
}

@media (max-width: 768px) {
    /* Mobile */
    header {
        flex-direction: column;
        align-items: flex-start;
    }

    nav ul.nav-main {
        flex-direction: column;
        width: 100%;
        gap: 0.5rem;
    }

    .birthday-card, .superannuation-card {
        width: 100%;
        max-width: 400px;
        margin: 0 auto;
    }

    .card.calendar {
        width: 100%;
        max-width: 300px;
        margin: 0 auto;
    }

    .scroll-list li {
        font-size: 0.9rem;
    }
}

@media (max-width: 480px) {
    /* Small Screens */
    header .logo img {
        height: 30px;
    }

    nav a {
        font-size: 0.9rem;
    }

    .birthday-card, .superannuation-card, .card.calendar {
        height: 200px;
    }

    .scroll-list li {
        font-size: 0.8rem;
    }

    .scroll-list li .download-icon {
        font-size: 0.8rem;
    }
}




        .scroll-list li img {
            width: 40px; /* Adjust size as needed */
            height: 40px;
            border-radius: 50%; /* Circular images */
            object-fit: cover;
            flex-shrink: 0; /* Prevent image from shrinking */
        }

        .scroll-list li .info {
            flex-grow: 1; /* Text takes remaining space */
            text-align: left; /* Align text to the left */
            /*height:10px;*/
        }

        @keyframes infiniteScroll {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-50%); /* Move half the total height for seamless loop */
            }
        }

        @keyframes scrollUp {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-100%);
            }
        }

        .scroll-container:hover .scroll-list {
            animation-play-state: paused !important;
        }

        .middle-section .card {
            width: 17.5%; /* 70% / 4 cards */
        }

        .calendar {
            width: 30%;
        }

        .calendar-grid {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            text-align: center;
            gap: 4px; /* Increases space between rows and columns */
            padding: 3px; /* Adds internal padding to increase space inside the grid */
        }

        .calendar-header {
            color: maroon;
            font-weight: bolder;
            font-size: 22px;
            padding: 0.2rem;
            margin: -1.5rem -1.5rem 1rem;
            text-align: center;
            display: flex;
            justify-content: space-between;
        }

        .login-form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

            .login-form input {
                padding: 0.3rem;
                border: 1px solid #e0e0e0;
                border-radius: 6px;
                width: 100%;
            }

        .login-btn {
            background-color: #8b0000;
            color: white;
            padding: 0.7rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .cards-slider-container {
            width: 85%;
            height: 200px;
            overflow: hidden;
            background-color: #e0e0e0;
            position: center;
            display: flex;
            display: flex;
            align-items: center;
        }

        .cards-slider-wrapper {
            width: 100%;
            overflow: hidden;
        }

        .cards-slider {
            display: flex;
            width: calc(373.33px * 6); /* 6 cards total, no duplicates */
            transition: transform 0.5s ease; /* Smooth transition for manual sliding */
            height:150px;
            margin-top:7%;
        }

            .cards-slider .card {
                width: 310.33px;
                flex-shrink: 0;
                margin-right: 1rem;
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                background-size: cover;
                color: white;
                text-shadow: 0 0 5px rgba(0, 0, 0, 0.8);
                background-size: cover;
            }

        .arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            cursor: pointer;
            font-size: 1.5rem;
            z-index: 10;
        }

        .left-arrow {
            left: 0;
        }

        .right-arrow {
            right: 0;
        }

        @media (max-width: 768px) {
            .cards-slider {
                width: calc(373.33px * 6);
            }
        }

     @keyframes cardSlide {
        0% {
            transform: translateX(0);
        }
        20% {
            transform: translateX(0); /* Pause at first card */
        }
        25% {
            transform: translateX(-373.33px); /* Move to second */
        }
        45% {
            transform: translateX(-373.33px); /* Pause at second */
        }
        50% {
            transform: translateX(-746.66px); /* Move to third */
        }
        70% {
            transform: translateX(-746.66px); /* Pause at third */
        }
        75% {
            transform: translateX(-1119.99px); /* Move to fourth */
        }
        95% {
            transform: translateX(-1119.99px); /* Pause at fourth */
        }
        100% {
            transform: translateX(0); /* Loop back */
        }
    }

        .cards-slider-container:hover .cards-slider {
            animation-play-state: paused;
        }

        footer {
            background-color: #712a2a;
            color: white;
            text-align: center;
            padding: 0.1rem !important;
            margin-top: 10px;
        }

        @media (max-width: 768px) {
            .top-section, .middle-section, .bottom-section {
                flex-direction: column;
            }

                .slider-container, .birthday-card, .middle-section .card, .calendar, .cards-slider-container, .superannuation-card {
                    width: 100%;
                }

            .cards-slider {
                width: calc(233.33px * 6);
                animation: none;
            }
        }

        .chatbot-toggle {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #8b0000;
            color: white;
            border: none;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            font-size: 24px;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease, transform 0.2s ease;
            z-index: 15 !important;
        }

            .chatbot-toggle:hover {
                background-color: #6b0000;
                transform: scale(1.1);
            }

        .chatbot-container {
            display: none;
            position: fixed;
            bottom: 80px;
            right: 20px;
            width: 350px;
            height: 500px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            flex-direction: column;
            z-index: 15 !important;
        }

        .chatbot-header {
            background: maroon;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: bold;
        }

        #chatbot-close {
            background: none;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: color 0.3s ease;
        }

            #chatbot-close:hover {
                color: #ccc;
            }

        .chatbot-messages {
            flex: 1;
            padding: 10px;
            overflow-y: auto;
            background-color: #f4f4f9;
        }

        .chatbot-message {
            margin: 10px 0;
            padding: 10px;
            border-radius: 8px;
            max-width: 80%;
        }

            .chatbot-message.user {
                background-color: #8b0000;
                color: white;
                margin-left: auto;
            }

            .chatbot-message.bot {
                background-color: #e0e0e0;
                color: #333;
            }

        .chatbot-input {
            display: flex;
            padding: 10px;
            border-top: 1px solid #e0e0e0;
        }

        #chatbot-input {
            flex: 1;
            padding: 8px;
            border: 1px solid #e0e0e0;
            border-radius: 6px;
            outline: none;
            margin-right: 10px;
        }

            #chatbot-input:focus {
                border-color: #8b0000;
            }

        #chatbot-send {
            background-color: #8b0000;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 12px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            #chatbot-send:hover {
                background-color: #6b0000;
            }
  /* Media Queries */
        @media (max-width: 1024px) {
            header { padding: 0.5rem; }
            nav ul.nav-main { gap: 1rem; }
            .birthday-card, .superannuation-card { width: 25%; min-width: 200px; }
            .card.calendar { width: 25%; min-width: 200px; }
            .ticker-container { height: 35px; }
            .ticker-list li { font-size: 0.95rem; padding: 0 1.5rem; }
            .ticker-control-btn { width: 25px; height: 25px; font-size: 16px; }
            .bottom-section { justify-content: center; }
            .superannuation-card { width: 30%; max-width: 400px; }
            .cards-slider-container { height: 120px; }
            .cards-slider { width: calc(25% * 6); height: 100px; }
            .cards-slider .card { width: calc(25% - 0.75rem); height: 100%; margin-right: 0.75rem; }
            .cards-slider .card h2 { font-size: 1.2rem; }
        }

        @media (max-width: 768px) {
            header { flex-direction: column; align-items: center; }
            nav { width: 100%; margin-top: 0.5rem; }
            nav ul.nav-main { flex-direction: column; align-items: center; gap: 0.5rem; }
            .top-section, .middle-section, .bottom-section { flex-direction: column; align-items: center; }
            .slider-container, .birthday-card, .middle-section .card, .calendar, .cards-slider-container, .superannuation-card { width: 100%; }
            .birthday-card, .superannuation-card { width: 100%; max-width: 400px; margin: 0 auto; }
            .card.calendar { width: 100%; max-width: 400px; margin: 0 auto; }
            .ticker-container { height: 30px; }
            .ticker-list li { font-size: 0.9rem; padding: 0 1rem; }
            .ticker-control-btn { width: 20px; height: 20px; font-size: 14px; }
            .bottom-section2 { margin-top: 0.5rem; }
            .cards-slider-container { height: 100px; }
            .cards-slider { width: calc(50% * 6); height: 80px; }
            .cards-slider .card { width: calc(50% - 0.5rem); height: 100%; margin-right: 0.5rem; }
            .cards-slider .card h2 { font-size: 1rem; }
        }

        @media (max-width: 480px) {
            header .logo img { height: 30px; }
            nav a { font-size: 0.9rem; }
            .birthday-card, .superannuation-card, .card.calendar { height: 200px; }
            .ticker-container { height: 25px; }
            .ticker-list li { font-size: 0.8rem; padding: 0 0.75rem; }
            .ticker-control-btn { width: 18px; height: 18px; font-size: 12px; }
            .cards-slider-container { height: 80px; }
            .cards-slider { width: calc(100% * 6); height: 60px; }
            .cards-slider .card { width: calc(100% - 0.5rem); height: 100%; margin-right: 0.5rem; }
            .cards-slider .card h2 { font-size: 0.9rem; }
        }

        @media only screen and (min-width: 768px) and (max-width: 1024px) {
            header { padding: 0.5rem; }
            nav ul.nav-main { gap: 1rem; }
            .container { padding: 0.75rem; }
            .top-section { flex-direction: row; gap: 0.75rem; }
            .slider-container { width: 70%; height: 250px; }
            .slider img { height: 250px; }
            .birthday-card { width: 28%; height: 250px; }
            .middle-section { flex-direction: row; flex-wrap: wrap; gap: 0.75rem; }
            .middle-section .card { width: 23%; height: 220px; }
            .card.calendar { width: 23%; height: 220px; }
            .bottom-section { width: 70%; height: 250px; }
            .bottom-section2 { width: 70%; height: 250px; }
            .superannuation-card::before{ width: 28%; height: 180px; max-width: 400px; }
            .superannuation-card { width: 28%; height: 180px; max-width: 400px; }
            .cards-slider-container { width: 70%; height: 120px; }
            .cards-slider { display: inline; }
            .cards-slider .card { width: calc(25% - 0.75rem); margin-right: 0.75rem; height: 100%; }
            .cards-slider .card h2 { font-size: 1.2rem; }
            footer { margin-top: 486px}

        }
        #birthday-slider {
    list-style: none;
    padding: 0;
    margin: 0;
    overflow: hidden;
    height: 100px; /* Adjust based on how many items you want visible */
}

#birthday-slider li {
    height: 100px; /* Match this to container height if one item at a time */
    display: flex;
    align-items: center;
    justify-content: center;
}

@keyframes scrollUp {
    0% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(-50%);
    }
}
.calendar-cell {
    display: inline-block;
    width: 13%;
    padding: 8px;
    margin: 1px;
    text-align: center;
    border-radius: 6px;
    font-weight: bold;
}

.holiday-ph {
    background-color: #ffcccc;
    width: auto;
    border-radius: 20px;
    font-weight: bold;
    border: 2px solid rgb(142 25 27 / 70%);
}
.holiday-rh {
    background-color: #ccffcc;
    width: auto;
    border-radius: 20px;
    font-weight: bold;
    border: 2px solid rgb(33 126 24 / 70%);
}
.holiday-wo {
  color: red; 
font-weight: bold;
}

.empty {
    visibility: hidden;
}
.sunday {
    color: red; 
    font-weight: bold;
}
.todaydate{
     color: red; 
 font-weight: bold;

}
.current-day{
       background-color: #f8f920;
 width: auto;
 border-radius: 20px;
 font-weight: bold;
border: 2px solid rgb(100 97 16 / 70%);
}

    </style>

</head>
<body>
    <header>
        <div class="logo">
            <img src="Images/NALCO-Photoroom.png" alt="NALCO Logo" />
        </div>
        <nav>
            <ul class="nav-main">
                <li class="dropdown"><a href="#" class="dropdown-toggle">Applications</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/apps/erp" target="_blank">Nalco Applications</a></li>
                        <li><a href="http://10.60.235.33:81" target="_blank">Guest House Reservation System(GHRS)</a></li>
                        <li><a href="http://vgps/vms/Login.aspx" target="_blank">Visitor Gate Pass</a></li>
                        <li><a href="http://10.1.5.7/Applications/FindANalconian/CS.aspx" target="_blank">Find a Nalconian</a></li>
                        <li><a href="http://10.60.235.33/Account/Login.aspx" target="_blank">My Data</a></li>
                        <li><a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Exec. Apprisal</a></li>
                        <li><a href="http://10.60.235.33/Account/Login.aspx" target="_blank">System Maint. Call</a></li>
                        <li><a href="http://10.1.5.7/Applications/FindANalconian/CS.aspx" target="_blank">Nalco Library</a></li>
                        <li><a href="http://10.1.5.7/Applications/FindANalconian/CS.aspx" target="_blank">Lotus Notes</a></li>
                        <li><a href="https://nalcoindia.com/wp-login.php" target="_blank">Nalco Live Tenders-Login</a></li>
                        <li><a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Property Returns</a></li>
                        <li><a href="http://10.60.235.33/Account/Login.aspx" target="_blank">eGreetings</a></li>
                        <li><a href="https://mudira.nalcoindia.co.in/clms/woregpublic_grid.aspx" target="_blank">Contract Labour Mgmt</a></li>
                        <li><a href="http://10.60.255.33/nalcocmc/index.aspx" target="_blank">Compliance Management</a></li>
                        <li><a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Vigilance Complaint Lodging</a></li>
                        <li><a href="http://10.1.5.7/Applications/FindANalconian/CS.aspx" target="_blank">E Office</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Policies</a>
                    <ul class="dropdown-menu">
                         <li><a href="http://10.1.5.7/Policies/Vision,%20Mission%20&%20Core%20values.pdf" target="_blank">Corporate Vission,Misssion & Core Values</a></li>
                        <li><a href="http://10.1.5.7/manuals/maintenance.pdf" target="_blank">Quality Policy</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Quality%20Policy%20Poster.pdf" target="_blank">Safety Manual</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Environment%20Policy%20Poster.pdf" target="_blank">Environment Policy</a></li>
                          <li><a href="http://10.1.5.7/manuals/maintenance.pdf" target="_blank">Energy Policy</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Quality%20Policy%20Poster.pdf" target="_blank">OHS Policy</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Environment%20Policy%20Poster.pdf" target="_blank">SA Policy</a></li>
                          <li><a href="http://10.1.5.7/Policies/NALCO%20Quality%20Policy%20Poster.pdf" target="_blank">HR</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Environment%20Policy%20Poster.pdf" target="_blank">IT Policies</a></li>
                          <li><a href="http://10.1.5.7/manuals/maintenance.pdf" target="_blank">Whistle Blower</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Quality%20Policy%20Poster.pdf" target="_blank">Internal Committee for Sexual Harassment of Women at Workplace</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Manuals</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/hrmanual.aspx" target="_blank">HR Manual</a></li>
                        <li><a href="http://10.1.5.7/Manuals/PurchaseManual_2024.pdf" target="_blank">Purchase manual</a></li>
                        <li><a href="https://nalcoindia.com/wp-content/uploads/2020/03/CONTRACT-MANUAL-2013-updated-till-31-10-2021.pdf" target="_blank">Contract Manual</a></li>
                        <li><a href="http://10.1.5.7/Manuals/Annual-Budget/Budget2015.htm" target="_blank">Capital Budget</a></li>
                          <li><a href="http://10.1.5.7/Manuals/store_manual.pdf" target="_blank">Stores Manual</a></li>
                        <li><a href="http://10.1.5.7/Manuals/APPOINTMENT_OF_CONSULTANT.pdf" target="_blank">Consultant Guideline</a></li>
                        <li><a href="http://10.1.5.7/Policies/annualreport/home_page.htm" target="_blank">Annual Reports</a></li>
                          <li><a href="http://10.1.5.7/Manuals/ISO27001/ISOManual.html" target="_blank">ISO 27001</a></li>
                        <li><a href="http://10.1.5.7/Policies/NALCO%20Environment%20Policy%20Poster.pdf" target="_blank">Accounting Manual</a></li>
                          <li><a href="http://10.1.5.7/Manuals/NALCO%20ERM%20Framework.pdf" target="_blank">Nalco ERM Framework</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Forms</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/forms/leave.pdf" target="_blank">PESB Appraisal</a></li>
                        <li><a href="http://10.1.5.7/forms/travel.pdf" target="_blank">Peon Book</a></li>
                        <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">Leave</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Medical</a></li>
                        <li><a href="http://10.1.5.7/forms/leave.pdf" target="_blank">Telephone</a></li>
                        <li><a href="http://10.1.5.7/forms/travel.pdf" target="_blank">Tour</a></li>
                        <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">LTC Form</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Loan</a></li>
                        <li><a href="http://10.1.5.7/forms/leave.pdf" target="_blank">PF</a></li>
                        <li><a href="http://10.1.5.7/forms/travel.pdf" target="_blank">NPS</a></li>
                        <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">Application / NOC / Declaration</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Nomination</a></li>
                         <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">Income Tax</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Requisition / Booking</a></li>
                        <li><a href="http://10.1.5.7/forms/leave.pdf" target="_blank">Contract Cell</a></li>
                        <li><a href="http://10.1.5.7/forms/travel.pdf" target="_blank">Purchase</a></li>
                        <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">Training</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Systems</a></li>
                        <li><a href="http://10.1.5.7/forms/leave.pdf" target="_blank">Bilingual Templates</a></li>
                        <li><a href="http://10.1.5.7/forms/travel.pdf" target="_blank">NDA Format</a></li>
                        <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">DSC Application Form</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Application for C-Type Quarter</a></li>
                         <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Application for D-Type Quarter</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Downloads</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/Downloads/Empanelled_Hospitalsnew.pdf" target="_blank">Medical Empanelled List</a></li>
                        <li><a href="http://10.1.5.7/Applications/emplweb/search_emp_details.asp" target="_blank">Find a Nalconian (Old ver.)</a></li>
                        <li><a href="http://10.1.5.7/Downloads/Parichaya/Parichaya.pdf" target="_blank">Parichaya</a></li>
                        <li><a href="http://10.1.5.7/downloads/updates.patch" target="_blank">Softwares</a></li>
                         <li><a href="http://10.1.5.7/Forms/Lokpalform.pdf" target="_blank">Lokpal Assets & Liabilities</a></li>
                        <li><a href="http://10.1.5.7/downloads/updates.patch" target="_blank">Information Security Awareness</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Departments</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/hrmanual.aspx" target="_blank">HRD</a></li>
                        <li><a href="http://10.1.5.7/Finance.htm" target="_blank">Finance</a></li>
                        <li><a href="http://10.1.5.7/System.html" target="_blank">System/ERP</a></li>
                        <li><a href="http://10.1.5.7/Rajbhasha/Rajbhasha_info.aspx" target="_blank">Raj Bhasa(राजभाषा)</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Useful Link</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Imp Links</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle">SA 8000</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">ISO 27001</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">CC & CSR</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                  <li class="dropdown"><a href="#" class="dropdown-toggle">Blacklisted Vendor</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle">HRD</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Misc</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Support</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
         <div class="logo" style="
        width: 260px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    font-size: 25px;
    color: white;
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.3)), url('Images/Nalco-Bhavan.jpg') no-repeat center;
    background-size: cover;
    border-radius: 5px;
    margin-left: 15px;
    letter-spacing: 3px;
    text-transform: uppercase;
    font-family: 'Segoe UI', sans-serif;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
    ">
         C O R P O R A T E
    </div>
    </header>



    <div class="container">
        <section class="top-section">
    <div class="slider-container">
        <div class="slider">
            <img src="Images/20250203_3.jpg" alt="Slide 1">
            <img src="Images/20250203_6.jpg" alt="Slide 2">
            <img src="Images/20250203_7.jpg" alt="Slide 3">
            <img src="Images/20250203_9.jpg" alt="Slide 4">
        </div>
    </div>

    <div class="card birthday-card" style="background: no-repeat center; background-size: cover; width:15%;">
        <h3>Birthdays</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="birthday-slider">
                <!-- Birthdays will be populated dynamically -->
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'birthday-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
        </div>
    </div>
</section>
        <div class="ticker-container">
            <div class="ticker">
                <ul class="ticker-list" id="ticker-list">
                    <!-- Ticker items will be populated dynamically -->
                </ul>
            </div>
            <button class="ticker-control-btn" onclick="toggleTicker(this, 'ticker-list')">⏸</button>
        </div>


        <section class="middle-section">
    <div class="card">
      <h3>📢Notices</h3>
      <div class="scroll-container">
        <ul class="scroll-list" id="notices-list" style="height:45px;">
          <!-- Notices will be populated dynamically -->
        </ul>
        <%-- <div id="paginationNotice" style="margin-top: 60%; text-align: center;"></div> --%>
       <%-- <button class="scroll-control-btn" onclick="toggleScroll(this, 'notices-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
      </div>
    </div>

    <div class="card">
        <h3>📝Circulars</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="circular-list"  style="height:44px;">
                <!-- Circulars will be populated dynamically -->
            </ul>
            <div id="paginationCircular" style="margin-top: 60%; text-align: center;"></div>
            <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'circular-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
        </div>
    </div>

    <div class="card">
        <h3>📅Events</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="events-list"  style="height:30px;">
                <!-- Events will be populated dynamically -->
            </ul>
            <%-- <div id="paginationEvents" style="margin-top: 60%; text-align: center;"></div> --%>
            <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'events-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
        </div>
    </div>

    <div class="card">
        <h3><i class="fas fa-sign-in-alt"></i> Login To NALCOAPPS</h3>
        <form class="login-form">
            <label for="username"><i class="fas fa-user"></i> Username:</label>
            <input type="text" id="username" placeholder="Enter your username" required>
            <label for="password"><i class="fas fa-lock"></i> Password:</label>
            <input type="password" id="password" placeholder="Enter your password" required>
            <button type="submit" class="login-btn"><i class="fas fa-sign-in-alt"></i> Login</button>
        </form>
    </div>

    <div class="cardcalendar" style="width: 16%;">
        <div class="calendar-header">
            <button id="prev-month">←</button>
            <span id="month-year"></span>
            <button id="next-month">→</button>
        </div>
        <div class="calendar-grid" id="calendar-grid">
            <%--<span>Sun</span><span>Mon</span><span>Tue</span><span>Wed</span><span>Thu</span><span>Fri</span><span>Sat</span>--%>
        </div>
    </div>
</section>
 <section class="bottom-section">
    <div class="card birthday-card" style="background: url('../NALCO_Intranet/Images/retirenew.jpg') no-repeat center; background-size: cover; width:15.5%;margin-top:-9%;">
        <h3>SUPERANNUATIONS</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="superannuating-slider">
                <!-- Superannuations will be populated dynamically -->
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'superannuating-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
        </div>
    </div>
</section>


      
<section class="bottom-section2">
    
        <div class="cards-slider-wrapper">
             <div class="cards-slider" id="cardsSlider">
                <%--<div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/Nalco-Bhavan.jpg') no-repeat center; background-size: cover;  height:100px; width:242px;">
                    <h2>Corporate</h2>
                </div>--%>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/smelter.jpg') no-repeat center; background-size: cover;height:100px; width:205px; cursor: pointer;" onclick="window.location.href='http://localhost:3664/Smelter.aspx';">
                    <h2>Smelter</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/CPP.jpg') no-repeat center; background-size: cover; height:100px; width:205px; cursor: pointer;" onclick="window.location.href='http://localhost:3664/CPP.aspx';">
                    <h2>CPP</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/refiner.jpg') no-repeat center; background-size: cover; height:100px; width:205px; cursor: pointer;" onclick="window.location.href='http://localhost:3664/Refinary_New.aspx';">
                    <h2>Refinery</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/NalcoMines.jpg') no-repeat center; background-size: cover; height:100px; width:205px; cursor: pointer;" onclick="window.location.href='http://localhost:3664/Mines.aspx';">
                    <h2>Mines</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/marketstock.jpg') no-repeat center; background-size: cover; height:100px; width:205px;">
                    <h2>Market Watch</h2>
                </div>
                </div>
            </div>
        </div>
</section>
    </div>


    <section>
        <!-- Chatbot Container -->
        <div class="chatbot-container" id="chatbot-container">
            <div class="chatbot-header">
                <span>NALCO Chatbot</span>
                <button id="chatbot-close">✖</button>
            </div>
            <div class="chatbot-messages" id="chatbot-messages"></div>
            <div class="chatbot-input">
                <input type="text" id="chatbot-input" placeholder="Ask me anything..." />
                <button id="chatbot-send">➤</button>
            </div>
        </div>
       <button class="chatbot-toggle" id="chatbot-toggle">🗨️</button>
    </section>

    <footer>
        <p>© 2025 NALCO. All Rights Reserved.</p>
    </footer>

     <script>
         // Define 'today' once at the top
         const today = new Date(); // Use current date dynamically

         // Calendar Generation
         let currentDate = new Date(); // Start with current month/year

         // Global variable to store API-fetched holidays
         let allHolidays = [];

         // Main calendar rendering function
         function renderCalendar(date, holidaysData) {
             const monthYear = document.getElementById("month-year");
             const calendarGrid = document.getElementById("calendar-grid");
             // Clear previous calendar days (keep day names)
             calendarGrid.innerHTML = `
            <span class="day-names" style="font-weight:bold;">Sun</span>
            <span class="day-names" style="font-weight:bold;">Mon</span>
            <span class="day-names" style="font-weight:bold;">Tue</span>
            <span class="day-names" style="font-weight:bold;">Wed</span>
            <span class="day-names" style="font-weight:bold;">Thu</span>
            <span class="day-names" style="font-weight:bold;">Fri</span>
            <span class="day-names" style="font-weight:bold;">Sat</span>
        `;

             // Set month and year in header
             const monthNames = [
                 "January", "February", "March", "April", "May", "June",
                 "July", "August", "September", "October", "November", "December"
             ];
             monthYear.textContent = `${monthNames[date.getMonth()]} ${date.getFullYear()}`;

             // Get first day of the month and number of days in the month
             const firstDay = new Date(date.getFullYear(), date.getMonth(), 1).getDay();
             const daysInMonth = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();

             // Add empty spans for days before the first day of the month
             for (let i = 0; i < firstDay; i++) {
                 calendarGrid.innerHTML += `<span></span>`;
             }

             // Add days of the month
             for (let day = 1; day <= daysInMonth; day++) {
                 const currentCellDate = new Date(date.getFullYear(), date.getMonth(), day);
                 let className = "calendar-cell";
                 let title = "";

                 // Check if it's today
                 if (
                     currentCellDate.getDate() === today.getDate() &&
                     currentCellDate.getMonth() === today.getMonth() &&
                     currentCellDate.getFullYear() === today.getFullYear()
                 ) {
                     className += " current-day";
                 }
                 if (currentCellDate.getDay() === 0) {
                     className += " sunday";
                 }
                 // Check if it's a holiday from the fetched data
                 const holiday = holidaysData.find(h =>
                     h.date.getDate() === currentCellDate.getDate() &&
                     h.date.getMonth() === currentCellDate.getMonth() &&
                     h.date.getFullYear() === currentCellDate.getFullYear()
                 );
                 if (holiday) {
                     className += ` holiday-${holiday.type.toLowerCase()}`;
                     title = `${holiday.title} (${holiday.type})`;
                 }

                 calendarGrid.innerHTML += `<div class="${className}" title="${title}">${day}</div>`;
             }
         }

         // Navigation buttons
         document.getElementById("prev-month").addEventListener("click", () => {
             currentDate.setMonth(currentDate.getMonth() - 1);
             renderCalendar(currentDate, allHolidays); // Pass updated allHolidays
         });

         document.getElementById("next-month").addEventListener("click", () => {
             currentDate.setMonth(currentDate.getMonth() + 1);
             renderCalendar(currentDate, allHolidays); // Pass updated allHolidays
         });

         const tickerItems = [
             { message: "NALCO achieves record production in Q1 2025!" },
             { message: "New HR policies effective from April 30, 2025." },
             { message: "Join the Annual Sports Meet on March 30, 2025." },
             { message: "IT system maintenance scheduled for April 20, 2025." },
             { message: "CSR Initiative Launch on April 15, 2025." }
         ];

         function populateTickerList() {
             const list = document.getElementById("ticker-list");
             list.innerHTML = '';

             if (tickerItems.length === 0) {
                 list.innerHTML = `<li>No announcements available</li>`;
                 return;
             }

             tickerItems.forEach(item => {
                 const li = document.createElement('li');
                 li.textContent = item.message;
                 list.appendChild(li);
             });

             tickerItems.forEach(item => {
                 const li = document.createElement('li');
                 li.textContent = item.message;
                 list.appendChild(li);
             });

             if (tickerItems.length > 1) {
                 const duration = tickerItems.length * 5;
                 list.style.animationDuration = `${duration}s`;
             } else {
                 list.style.animation = 'none';
             }
         }

         function toggleTicker(button, listId) {
             const list = document.getElementById(listId);
             const isPaused = list.style.animationPlayState === 'paused';
             list.style.animationPlayState = isPaused ? 'running' : 'paused';
             button.textContent = isPaused ? '⏸' : '▶';
         }

         populateTickerList();

     </script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const chatbotToggle = document.getElementById('chatbot-toggle');
            const chatbotContainer = document.getElementById('chatbot-container');
            const chatbotClose = document.getElementById('chatbot-close');
            const chatbotMessages = document.getElementById('chatbot-messages');
            const chatbotInput = document.getElementById('chatbot-input');
            const chatbotSend = document.getElementById('chatbot-send');
            const today = new Date();

            let nalcoChatbotModel = {};
            let nalcoInfoModel = {};
            let dopDataModel = [];
            let synonymDictionary = {};
            let selectedDataSource = null;

            // FIX: Initialize data directly to avoid fetch errors in the environment
            nalcoChatbotModel = {};
            nalcoInfoModel = {};
            dopDataModel = [];
            synonymDictionary = {};
            console.log('Chatbot data initialized locally to prevent fetch errors.');
            if (dopDataModel.length < 49) {
                console.error('DOP data incomplete! Expected 49 clauses, got:', dopDataModel.length);
                // addBotMessage("Warning: DOP data is incomplete. Some clauses may not be available.");
            }


            chatbotToggle.addEventListener('click', () => {
                chatbotContainer.style.display = 'flex';
                chatbotToggle.style.display = 'none';
                chatbotInput.disabled = true;
                chatbotSend.disabled = true;

                const currentHour = new Date().getHours();
                const greeting = currentHour < 12 ? "Good morning" : currentHour < 18 ? "Good afternoon" : "Good evening";
                const welcomeMessage = `${greeting} Welcome User! I am NALCO Assistant. Today is ${today.toDateString()} and the time is ${today.toLocaleTimeString()}. How can I assist you today?`;
                addBotMessage(welcomeMessage);
                showDataSourceOptions();
            });

            chatbotClose.addEventListener('click', () => {
                chatbotContainer.style.display = 'none';
                chatbotToggle.style.display = 'block';
                selectedDataSource = null;
                chatbotInput.disabled = true;
                chatbotSend.disabled = true;
            });

            chatbotSend.addEventListener('click', sendMessage);
            chatbotInput.addEventListener('keypress', (e) => {
                if (e.key === 'Enter') sendMessage();
            });

            function sendMessage() {
                const message = chatbotInput.value.trim();
                if (!message || !selectedDataSource) return;
                addUserMessage(message);
                processUserInput(message);
                chatbotInput.value = '';
            }

            function addUserMessage(message) {
                const div = document.createElement('div');
                div.classList.add('chatbot-message', 'user');
                div.textContent = message;
                chatbotMessages.appendChild(div);
                chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
            }

            function addBotMessage(message) {
                const lines = message.split('\n').filter(line => line.trim().length > 0);
                lines.forEach(line => {
                    const div = document.createElement('div');
                    div.classList.add('chatbot-message', 'bot');
                    div.textContent = line;
                    chatbotMessages.appendChild(div);
                });
                chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
            }

            function showDataSourceOptions() {
                const optionsDiv = document.createElement('div');
                optionsDiv.classList.add('chatbot-message', 'bot');
                optionsDiv.innerHTML = `
                Please choose a data source:<br>
                <button onclick="selectDataSource('NALCO')">1. NALCO Data</button><br>
                <button onclick="selectDataSource('DOP')">2. DOP Data</button>
            `;
                chatbotMessages.appendChild(optionsDiv);
                chatbotMessages.scrollTop = chatbotMessages.scrollHeight;

                window.selectDataSource = function (source) {
                    selectedDataSource = source;
                    addBotMessage(`You selected ${source} data. Now you can ask me anything related to ${source}!`);
                    chatbotInput.disabled = false;
                    chatbotSend.disabled = false;
                    chatbotInput.focus();
                    optionsDiv.remove();
                };
            }

            function preprocessInput(input) {
                return input.toLowerCase()
                    .replace(/[^\w\s.\d()]/g, '')
                    .split(/\s+/)
                    .filter(word => word.length > 0);
            }

            function mapToKeyword(word) {
                for (const keyword in synonymDictionary) {
                    if (word === keyword || synonymDictionary[keyword]?.includes(word)) {
                        return keyword;
                    }
                }
                return null;
            }

            function extractClauseNumber(input) {
                const clauseRegex = /(?:clause\s+)?(\d+\.\d+(?:\.\d+)?(?:\([a-b]\))?)/i;
                const match = input.match(clauseRegex);
                return match ? match[1] : null;
            }

            function processUserInput(input) {
                const tokens = preprocessInput(input);
                const clauseNumber = extractClauseNumber(input);
                console.log("Input:", input);
                console.log("Tokens:", tokens);
                console.log("Extracted clause number:", clauseNumber);

                let matchedKeywords = [];
                tokens.forEach(token => {
                    const keyword = mapToKeyword(token);
                    if (keyword && !matchedKeywords.includes(keyword)) {
                        matchedKeywords.push(keyword);
                    }
                });

                if (matchedKeywords.length === 0 && !clauseNumber) {
                    addBotMessage(`I didn't quite understand that. You can ask about ${selectedDataSource} data, or type 'help' for options!`);
                    return;
                }

                let response = "";

                function getResponseForKeyword(keyword, tokens) {
                    if (selectedDataSource === 'NALCO') {
                        if (keyword === 'nalco' || keyword === 'company') {
                            const company = nalcoInfoModel.company;
                            return company ? `${company.name} (${company.abbreviation}) is a ${company.type} in the ${company.industry} industry, founded in ${company.founded}.\nHeadquarters: ${company.headquarters}.\nDescription: ${company.description}` : "No company info available.";
                        }
                        if (keyword === 'operations') {
                            const ops = nalcoInfoModel.operations;
                            return ops ? `NALCO Operations:\nBauxite Mines: ${ops.bauxite_mines.location} - ${ops.bauxite_mines.description}\nAlumina Refinery: ${ops.alumina_refinery.location} - ${ops.alumina_refinery.description}\nSmelter: ${ops.smelter.location} - ${ops.smelter.description}\nPower Plant: ${ops.power_plant.location} - ${ops.power_plant.description}` : "No operations info available.";
                        }
                        if (keyword === 'achievements') {
                            const achievements = nalcoInfoModel.achievements;
                            return achievements ? `NALCO Achievements:\n${achievements.map(a => `${a.year}: ${a.milestone}`).join('\n')}` : "No achievements info available.";
                        }
                        if (keyword === 'vision') {
                            return nalcoInfoModel.vision ? `NALCO Vision: ${nalcoInfoModel.vision}` : "No vision info available.";
                        }
                        if (keyword === 'mission') {
                            return nalcoInfoModel.mission ? `NALCO Mission: ${nalcoInfoModel.mission}` : "No mission info available.";
                        }
                        if (keyword === 'location' || keyword === 'headquarters') {
                            return nalcoInfoModel.company?.headquarters ? `NALCO Headquarters: ${nalcoInfoModel.company.headquarters}` : "No location info available.";
                        }
                        if (keyword === 'founded') {
                            return nalcoInfoModel.company?.founded ? `NALCO was founded in ${nalcoInfoModel.company.founded}.` : "No founding info available.";
                        }
                        if (keyword === 'birthdays') {
                            const birthdays = nalcoChatbotModel.birthdays;
                            return birthdays ? `Upcoming Birthdays:\n${birthdays.map(b => `${b.name} (${b.role}, ${b.department}): ${b.date}`).join('\n')}` : "No birthday info available.";
                        }
                        if (keyword === 'superannuations') {
                            const superannuations = nalcoChatbotModel.superannuations;
                            return superannuations ? `Upcoming Superannuations:\n${superannuations.map(s => `${s.name} (${s.role}, ${s.department}): ${s.date} - ${s.retirement_message}`).join('\n')}` : "No superannuation info available.";
                        }
                        if (keyword === 'notices') {
                            const notices = nalcoChatbotModel.notices;
                            return notices ? `Recent Notices:\n${notices.map(n => `${n.title} (${n.date}): ${n.description}`).join('\n')}` : "No notices available.";
                        }
                        if (keyword === 'circulars') {
                            const circulars = nalcoChatbotModel.circulars;
                            return circulars ? `Recent Circulars:\n${circulars.map(c => `${c.title} (${c.date}): ${c.description}`).join('\n')}` : "No circulars available.";
                        }
                        if (keyword === 'quick links') {
                            const links = nalcoChatbotModel.quickLinks;
                            return links ? `Quick Links:\n${links.map(l => `${l.name}: ${l.url} (${l.description})`).join('\n')}` : "No quick links available.";
                        }
                        if (keyword === 'holidays') {
                            const holidays = nalcoChatbotModel.holidays;
                            return holidays ? `Upcoming Holidays:\n${holidays.map(h => `${h.name} (${h.date}): ${h.description}`).join('\n')}` : "No holiday info available.";
                        }
                        if (keyword === 'login') {
                            const login = nalcoChatbotModel.login;
                            return login ? `${login.description}\nSupport: ${login.support_contact}` : "No login info available.";
                        }
                        if (keyword === 'help') {
                            return "I can help with NALCO data! Ask about:\nCompany (e.g., 'nalco', 'company')\nOperations\nAchievements\nVision/Mission\nLocation\nFounded\nBirthdays\nSuperannuations\nNotices\nCirculars\nQuick Links\nHolidays\nLogin\nOr say 'time' for the current date and time!";
                        }
                        if (keyword === 'time') {
                            const now = new Date();
                            return `It's currently ${now.toLocaleTimeString()} on ${now.toDateString()}.`;
                        }
                        return "";
                    } else if (selectedDataSource === 'DOP') {
                        const dop = dopDataModel || [];
                        if (keyword === 'dop') {
                            return dop.length > 0 ? `The DOP data contains delegation of powers across various clauses.\nAsk about a specific clause (e.g., 'clause 1.1' or '1.14(a)') for details!` : "DOP data not available.";
                        }
                        if (keyword === 'human resources') {
                            const hrClauses = dop.filter(clause => clause.Cl_No.startsWith('1.'));
                            return hrClauses.length > 0 ? `Human Resources clauses:\n${hrClauses.slice(0, 2).map(c => `${c.Cl_No}: ${c.Nature_of_Powers}`).join('\n')}\nAsk about a specific clause for more details!` : "Human Resources data not available.";
                        }
                        if (clauseNumber) {
                            console.log("Searching DOP for clause:", clauseNumber);
                            const clause = dop.find(c => {
                                const match = c.Cl_No === clauseNumber;
                                console.log(`Comparing: "${c.Cl_No}" === "${clauseNumber}" -> ${match}`);
                                return match;
                            });
                            console.log("Found clause:", clause || "Not found");
                            if (clause) {
                                return `Clause ${clauseNumber}: ${clause.Nature_of_Powers}\nRemarks: ${clause.Remarks}\nPowers:\nFunctional Director: ${clause.Functional_Director}\nExecutive Director: ${clause.Executive_Director}\nGGM (E8): ${clause.GGM_E8}\nGM (E7): ${clause.GM_E7}\nDGM (E6): ${clause.DGM_E6}\nAGM (E5): ${clause.AGM_E5}\nRM: ${clause.RM}`;
                            }
                            return `Clause ${clauseNumber} not found.\nPlease check the number (e.g., '1.1' or '1.14(a)') or ask about DOP!`;
                        }
                        if (keyword === 'help') {
                            return "I'm here to assist with DOP data! You can ask about:\nDOP overview (e.g., 'dop')\nHuman Resources clauses (e.g., 'human resources')\nSpecific clauses (e.g., 'clause 1.1', '1.14(a)', or 'what's 3.39')\nOr just say 'time' for the current date and time!";
                        }
                        if (keyword === 'time') {
                            const now = new Date();
                            return `It's currently ${now.toLocaleTimeString()} on ${now.toDateString()}.`;
                        }
                        return "";
                    }
                    return "";
                }

                if (selectedDataSource === 'DOP' && clauseNumber) {
                    response = getResponseForKeyword(null, tokens);
                } else if (matchedKeywords.length > 0) {
                    matchedKeywords.forEach(keyword => {
                        const res = getResponseForKeyword(keyword, tokens);
                        if (res) response += (response ? "\n\n" : "") + res;
                    });
                }

                addBotMessage(response || `I couldn't find an exact match in ${selectedDataSource} data.\nTry rephrasing your query (e.g., 'nalco operations', 'clause 1.1') or type 'help' for assistance!`);
            }
        });


    </script>
    <script>
        let currentIndex = 0;
        const cardWidth = 373.33; // Width of one card
        const totalCards = 6;
        const visibleCards = 3;
        const slider = document.getElementById('cardsSlider');

        function updateSliderPosition() {
            if (slider) { // FIX: Check if slider element exists
                slider.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
            }
        }

        function slideRight() {
            if (currentIndex < totalCards - visibleCards) {
                currentIndex++;
                updateSliderPosition();
            }
        }

        function slideLeft() {
            if (currentIndex > 0) {
                currentIndex--;
                updateSliderPosition();
            }
        }

        // Auto-slide functionality removed to make cards static
        /*
        function autoSlide() {
            if (currentIndex < totalCards - visibleCards) {
                currentIndex++;
            } else {
                currentIndex = 0; // Loop back to start
            }
            updateSliderPosition();
        }

        setInterval(autoSlide, 1500); // Move every 1.5s (1s pause + 0.5s transition)
        */
    </script>
  <script>
      const itemsPerPageCircular = 4;
      const itemsPerPageEvents = 4;
      const itemsPerPageNotices = 4;
      let currentPageCircular = 1;
      let currentPageEvents = 1;
      let currentPageNotice = 1;

      let circulars = [];
      let events = [];
      let notices = [];
      // `allHolidays` is already declared globally above.

      const FILE_BASE_URL = "http://10.1.5.7/circulars/";

      function sendLoginRequest() {
          const payload = {
              "PERNR": "",
              "param1": "1000",
              "param2": "",
              "param3": "",
              "Token": ""
          };

          const apiUrl = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";
          const IMAGE_BASE_URL = "http://10.1.5.7/images/emp_pic/";

          fetch(apiUrl, {
              method: 'POST',
              headers: {
                  'Content-Type': 'application/json',
                  'Authorization': 'Bearer N@lco!@#$123'
              },
              body: JSON.stringify(payload)
          })
              .then(response => {
                  if (!response.ok) {
                      throw new Error(`HTTP error! Status: ${response.status}`);
                  }
                  return response.json();
              })
              .then(data => {
                  console.log('API Response:', data);

                  // Handle birthdays data
                  if (data.birthdays && Array.isArray(data.birthdays)) {
                      const processedBirthdays = data.birthdays.map(item => ({
                          name: item.emp_name,
                          designation: item.emp_dept,
                          unit: item.emp_unit,
                          pernr: item.PERNR,
                          image: `${IMAGE_BASE_URL}${item.PERNR}.jpg`
                      }));
                      displayBirthdays(processedBirthdays);
                  }
                  // Handle superAnnuating data
                  if (data.supperannuation && Array.isArray(data.supperannuation)) {
                      const processedAnnuation = data.supperannuation.map(item => ({
                          name: item.emp_name,
                          designation: item.emp_dept,
                          unit: item.emp_unit,
                          pernr: item.PERNR,
                          image: `${IMAGE_BASE_URL}${item.PERNR}.jpg`
                      }));
                      displayAnnuation(processedAnnuation);
                  }

                  // Handle holidays data and render calendar
                  if (data.nalco_holidays && Array.isArray(data.nalco_holidays)) {
                      allHolidays = data.nalco_holidays.map(item => {
                          const [day, month, yearAndTime] = item.holiday_date.split("-");
                          const year = yearAndTime.split(" ")[0];
                          const monthIndex = parseInt(month, 10) - 1;
                          return {
                              date: new Date(parseInt(year, 10), monthIndex, parseInt(day, 10)),
                              title: item.Title,
                              type: item.type // This `type` is crucial for the CSS class
                          };
                      });
                      renderCalendar(currentDate, allHolidays);
                  }


                  // Handle other data (existing code)
                  if (data.circulars && Array.isArray(data.circulars)) {
                      circulars = data.circulars.map(item => ({
                          title: item.Title,
                          date: formatDateInput(item.pub_date),
                          fileUrl: FILE_BASE_URL + encodeURIComponent(item.File_Name)
                      }));
                      displayCirculars(currentPageCircular);
                  }

                  if (data.events && Array.isArray(data.events)) {
                      events = data.events.map(item => ({
                          title: item.Title,
                          date: formatDateInput(item.pub_date),
                          fileUrl: FILE_BASE_URL + encodeURIComponent(item.File_Name)
                      }));
                      displayEvents(currentPageEvents);
                  }

                  if (data.notices && Array.isArray(data.notices)) {
                      notices = data.notices.map(item => ({
                          title: item.Title,
                          date: formatDateInput(item.pub_date),
                          fileUrl: FILE_BASE_URL + encodeURIComponent(item.File_Name)
                      }));
                      displayNotices(currentPageNotice);
                  }

                  if ((!data.circulars || data.circulars.length === 0) &&
                      (!data.events || data.events.length === 0) &&
                      (!data.notices || data.notices.length === 0) &&
                      (!data.birthdays || data.birthdays.length === 0) &&
                      (!data.supperannuation || data.supperannuation.length === 0) &&
                      (!data.nalco_holidays || data.nalco_holidays.length === 0)) {
                      console.log("No data found in response.");
                  }

                  // Handle superannuating employees data
                  // NOTE: This block is commented out in your original code,
                  // but leaving it for completeness if you enable it later.
                  /*
                  if (data.superannuations && Array.isArray(data.superannuations)) {
                      const processedSuperannuations = data.superannuations.map(item => ({
                          name: item.emp_name,
                          designation: item.emp_dept,
                          unit: item.emp_unit,
                          pernr: item.PERNR,
                          retirement_date: formatDateInput(item.retirement_date),
                          image: `${IMAGE_BASE_URL}${item.PERNR}.jpg`
                      }));
                      displaySuperannuations(processedSuperannuations);
                  }
                  */
              })
              .catch(error => {
                  console.error('Error during API call:', error);
                  document.getElementById('birthday-slider').innerHTML = '<li>Failed to load birthdays</li>';
                  document.getElementById('superannuating-slider').innerHTML = '<li>Failed to load superannuating employees</li>';
                  renderCalendar(currentDate, []); // Render calendar with no holidays on API error
              });
      }

      function displayBirthdays(birthdays) {
          const list = document.getElementById('birthday-slider');
          list.innerHTML = '';

          if (birthdays.length === 0) {
              list.innerHTML = '<li>No birthdays today</li>';
              list.style.animation = 'none';
              return;
          }

          birthdays.forEach(birthday => {
              const li = document.createElement('li');
              li.innerHTML = `
            <div class="info">
                <span class="employee-name">${birthday.name}</span>
                <span class="designation">${birthday.designation}</span>
                <span class="unit">${birthday.unit}</span>
            </div>
        `;
              list.appendChild(li);
          });

          if (birthdays.length >= 4) {
              list.innerHTML += list.innerHTML;
              const duration = birthdays.length * 6;
              list.style.animation = `scrollUp ${duration}s linear infinite`;
          } else {
              list.style.animation = 'none';
          }
      }
      function displayAnnuation(supperannuation) {
          const list = document.getElementById('superannuating-slider');
          list.innerHTML = '';

          if (supperannuation.length === 0) {
              list.innerHTML = '<li>No superannuations today</li>';
              list.style.animation = 'none';
              return;
          }

          supperannuation.forEach(item => {
              const li = document.createElement('li');
              li.innerHTML = `
      <div class="info">
          <span class="employee-name">${item.name}</span>
          <span class="designation">${item.designation}</span>
          <span class="unit">${item.unit}</span>
      </div>
  `;
              list.appendChild(li);
          });

          if (supperannuation.length >= 3) {
              list.innerHTML += list.innerHTML;
              const duration = supperannuation.length * 6;
              list.style.animation = `scrollUp ${duration}s linear infinite`;
          } else {
              list.style.animation = 'none';
          }
      }


      function displayCirculars(page) {
          const start = (page - 1) * itemsPerPageCircular;
          const end = start + itemsPerPageCircular;
          const paginatedItems = circulars.slice(start, end);

          const list = document.getElementById("circular-list");
          list.innerHTML = "";

          paginatedItems.forEach(item => {
              const li = document.createElement("li");
              li.innerHTML = `
                <div class="info" style="display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <span style="font-weight: 500;"> ${item.title}</span><br>
                        <small class="time-ago" style="color: gray;">${formatDate(item.date)}</small>
                    </div>
                    <span class="download-icon" title="Download" data-url="${item.fileUrl}" onclick="downloadItem(this)" style="cursor: pointer; font-size: 12px; margin-left: 10px;">
                        <i class="fas fa-download" aria-hidden="true"></i>
                    </span>
                </div>
            `;
              li.style.borderBottom = "1px solid #ccc";
              li.style.padding = "10px 0";
              list.appendChild(li);
          });

          renderPaginationCircular();
      }

      function renderPaginationCircular() {
          const totalPages = Math.ceil(circulars.length / itemsPerPageCircular);
          const container = document.getElementById("paginationCircular");
          container.innerHTML = "";

          for (let i = 1; i <= totalPages; i++) {
              const btn = document.createElement("button");
              btn.textContent = i;
              btn.style.marginTop = "80px";
              btn.style.padding = "4px 8px";
              btn.style.backgroundColor = i === currentPageCircular ? "#8B0000" : "#ddd";
              btn.style.color = i === currentPageCircular ? "white" : "black";
              btn.style.border = "none";
              btn.style.borderRadius = "4px";
              btn.style.cursor = "pointer";
              btn.style.marginLeft = "5px";
              btn.onclick = () => {
                  currentPageCircular = i;
                  displayCirculars(i);
              };
              container.appendChild(btn);
          }
      }


      function displayEvents(page) {
          const start = (page - 1) * itemsPerPageEvents;
          const end = start + itemsPerPageEvents;
          const paginatedItems = events.slice(start, end);

          const list = document.getElementById("events-list");
          list.innerHTML = "";

          paginatedItems.forEach(item => {
              const li = document.createElement("li");
              li.innerHTML = `
                <div class="info" style="display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <span style="font-weight: 500;"> ${item.title}</span><br>
                        <small class="time-ago" style="color: gray;">${formatDate(item.date)}</small>
                    </div>
                    <span class="download-icon" title="Download" data-url="${item.fileUrl}" onclick="downloadItem(this)" style="cursor: pointer; font-size: 12px; margin-left: 10px;">
                        <i class="fas fa-download" aria-hidden="true"></i>
                    </span>
                </div>
            `;
              li.style.borderBottom = "1px solid #ccc";
              li.style.padding = "10px 0";
              list.appendChild(li);
          });

      }

      function displayNotices(page) {
          const start = (page - 1) * itemsPerPageNotices;
          const end = start + itemsPerPageNotices;
          const paginatedItems = notices.slice(start, end);

          const list = document.getElementById("notices-list");
          list.innerHTML = "";

          paginatedItems.forEach(item => {
              const li = document.createElement("li");
              li.innerHTML = `
          <div class="info" style="display: flex; justify-content: space-between; align-items: center;">
              <div>
                  <span style="font-weight: 500;"> ${item.title}</span><br>
                  <small class="time-ago" style="color: gray;">${formatDate(item.date)}</small>
              </div>
              <span class="download-icon" title="Download" data-url="${item.fileUrl}" onclick="downloadItem(this)" style="cursor: pointer; font-size: 12px; margin-left: 10px;">
                  <i class="fas fa-download" aria-hidden="true"></i>
              </span>
          </div>
      `;
              li.style.borderBottom = "1px solid #ccc";
              li.style.padding = "10px 0";
              list.appendChild(li);
          });
      }

      function downloadItem(el) {
          const url = el.getAttribute("data-url");
          window.open(url, "_blank");
      }

      function formatDateInput(dateStr) {
          const [day, month, yearAndTime] = dateStr.split("-");
          const [year] = yearAndTime.split(" ");
          return `${year}-${month}-${day}`;
      }

      function formatDate(dateString) {
          const date = new Date(dateString);
          const now = new Date();
          const diff = Math.floor((now - date) / (1000 * 60 * 60 * 24));

          if (diff === 0) return "Today";
          if (diff === 1) return "Yesterday";
          if (diff < 7) return `${diff} days ago`;

          return date.toLocaleDateString();
      }

      document.addEventListener('DOMContentLoaded', sendLoginRequest);
      // Initial render when script loads, will be updated by API data later
      // The `currentDate` is initialized to the current month/year
      renderCalendar(currentDate, []); // Render initially with no holidays, API call will populate `allHolidays`

  </script>

</body>
</html>

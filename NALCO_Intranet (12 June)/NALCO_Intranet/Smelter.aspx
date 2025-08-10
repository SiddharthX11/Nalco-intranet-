<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Refinary_New.aspx.cs" Inherits="NALCO_Intranet_Refinary_New" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NALCO Intranet</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            width: 100% !important;
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
            flex-grow: 1;
            justify-content: flex-end; /* Centers the ul within nav */
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
        }
        .bottom-section2 {
           display: flex;
            gap: 1rem;
            width: 81%;
            margin-top:-8%;
            margin-left:10px;
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
            background-size: 100% !important;
            background-repeat: no-repeat !important;
            padding: 1rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            position: relative; /* For absolute positioning of button */
            height: 250px; /* Set a consistent height for all cards except Login */
            width: 300px; 
            overflow: hidden; 
        }

        .card-scroll-content {
    height: 100%;
    overflow-y: auto;
    padding-right: 10px; /* for scrollbar space */
}
        .middle-section .card:nth-child(1), /* Notices */
        .middle-section .card:nth-child(2), /* Circulars */
        .middle-section .card:nth-child(3), /* Events */
        .middle-section .card:nth-child(4) /* Login Form */ {
            height: 250px;
        }

        .card.calendar {
            width: 15%; /* Default for desktop */
            height: 250px;
            transition: width 0.3s ease;
        }

        .bottom-section {
            gap: 10px;
        }

        .cards-slider-container {
            position: relative;
             height:100px; width:220px;
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
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

            .card h3 {
                background: maroon;
                color: white;
                padding: 0.2rem;
                margin: -1.5rem -1.5rem 1rem;
                text-align: center;
            }

        /* Birthday and Superannuating Cards */
        .birthday-card, .superannuation-card {
            width: 30%; /* Default for desktop */
            background-size: cover;
            color: #333;
            position: relative;
            height: 250px;
            transition: width 0.3s ease;
        }

            /* Birthday and Superannuating Card Headers */
            .birthday-card h3, .superannuation-card h3 {
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
            padding-bottom: 40px; /* Space for download button */
        }

        .scroll-list {
            list-style: none;
            padding-bottom: 2px;
            margin: 0;
            animation: infiniteScroll linear infinite;
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
            justify-content: space-between; /* Ensures content and icon are spaced apart */
        }

            .scroll-list li .info {
                flex-grow: 1;
                text-align: left;
                margin-left: 0px;
                font-size: 12px;
            }

            .scroll-list li .download-icon {
                cursor: pointer;
                font-size: 0.75rem;
                color: #8b0000;
                transition: color 0.3s ease;
            }
            
        .slider-container {
            width: 81%;
            height: 300px;
            overflow: hidden;
            background-color: #e0e0e0;
        }
        
            .cards-slider {
                width: calc(233.33px * 6);
                animation: none;
            }
            .cards-slider-container:hover .cards-slider {
            animation-play-state: paused;
        }
                  .cards-slider-container {
            width: 100%;
            height: 200px;
            overflow: hidden;
            background-color:#ffffff;
            position: center;
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
            
    .slider-container {
        width: 83%; /* Reduce width to fit alongside birthday card */
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
            0%;

        {
            transform: translateY(0);
        }

        100% {
            transform: translateY(-50%);
        }

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
                max-width: 400px;
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
            gap: 8px; /* Increases space between rows and columns */
            padding: 10px; /* Adds internal padding to increase space inside the grid */
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
                padding: 0.7rem;
                border: 1px solid #e0e0e0;
                border-radius: 6px;
                width: 100%;
            }

        .login-btn {
            background-color: #8b0000;
            color: white;
            padding: 0.7rem;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        /*.cards-slider-container {
            width: 85%;
            height: 200px;
            overflow: hidden;
            background-color: #e0e0e0;
            position: center;
            display: flex;
            align-items: center;
        }*/

        .cards-slider-wrapper {
            width: 100%;
            overflow: hidden;
        }

        .cards-slider {
            display: flex;
            width: calc(373.33px * 6); /* 6 cards total, no duplicates */
            transition: transform 0.5s ease; /* Smooth transition for manual sliding */
            height: 150px;
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

        @media only screen and (min-width: 768px) and (max-width: 1024px) {
            /* Header Adjustments */
            header {
                padding: 0.5rem; /* Slightly more padding for better spacing */
            }

            nav ul.nav-main {
                gap: 1rem; /* Reduce gap between nav items for better fit */
            }

            /* Container */
            .container {
                padding: 0.75rem; /* Slightly less padding to maximize space */
            }

            /* Top Section */
            .top-section {
                flex-direction: row; /* Keep horizontal layout */
                gap: 0.75rem;
            }
             .bottom-section {
                flex-direction: row; /* Keep horizontal layout */
                gap: 0.75rem;
            }
           

            .slider img {
                height: 250px; /* Match container height */
            }

            .birthday-card {
                width: 28%; /* Adjusted to fit beside slider */
                height: 250px;
            }

            /* Middle Section */
            .middle-section {
                flex-direction: row; /* Keep horizontal layout */
                flex-wrap: wrap; /* Allow wrapping if needed */
                gap: 0.75rem;
            }

                .middle-section .card {
                    width: 23%; /* Adjust width for 4 cards in a row with gap */
                    height: 220px; /* Slightly shorter for better fit */
                }

            .card.calendar {
                width: 23%; /* Match other cards */
                height: 220px;
            }

            /* Bottom Section */


            .superannuation-card {
                position:fixed;
                width: 28%; 
                height: 180px; 
            }

            /* Scroll List Adjustments */
            .scroll-list li {
                font-size: 0.95rem; /* Slightly smaller text for readability */
            }

                .scroll-list li img {
                    width: 35px; /* Slightly smaller images */
                    height: 35px;
                }

            /* Chatbot */
            .chatbot-container {
                width: 320px; /* Slightly smaller for iPad */
                height: 450px;
            }

            .chatbot-toggle {
                width: 45px;
                height: 45px;
                font-size: 22px;
            }
        }
    </style>
    <style>
        .smelterlogo {
            width: 40%; /* Match original width */
            background: white;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            height: 250px; /* Consistent with other cards */
        }

        .smelterlogo-top {
            flex: 1; /* 50% of card height */
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

            .smelterlogo-top img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                display: block;
            }

        .smelterlogo-bottom {
            flex: 1; /* 50% of card height */
            display: flex;
            flex-direction: row; /* Horizontal layout */
            gap: 0.5rem;
            padding: 0.5rem;
            background: #f9f9f9;
            height: 53%;
        }

        .news-clip-card, .fav-apps-card {
            flex: 1; /* Equal width */
            background: white;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            border-radius: 6px;
            padding: 0.5rem;
            display: flex;
            flex-direction: column;
            height: 100%;
        }

            .news-clip-card h3, .fav-apps-card h3 {
                background: maroon;
                color: white;
                padding: 0.3rem;
                margin: -0.5rem -0.5rem 0.5rem;
                text-align: center;
                font-size: 0.9rem; /* Readable heading */
            }

        .news-clip-list, .fav-apps-list {
            list-style: none;
            padding: 0;
            margin: 0;
            overflow-y: auto; /* Allow scrolling if content overflows */
            flex-grow: 1;
            font-size: 0.8rem; /* Adjusted for readability */
        }

            .news-clip-list li, .fav-apps-list li {
                padding: 0.3rem 0;
                border-bottom: 1px solid #e0e0e0;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

                .news-clip-list li .info, .fav-apps-list li .info {
                    flex-grow: 1;
                    display: flex;
                    flex-direction: column;
                }

                    .news-clip-list li .info span, .fav-apps-list li .info span {
                        font-size: 0.8rem; /* Primary text */
                    }

                .news-clip-list li .time-ago {
                    font-size: 0.7rem; /* Smaller for dates */
                    color: #666;
                }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .smelterlogo {
                width: 100%;
                height: 400px; /* Taller for stacked cards */
            }

            .smelterlogo-bottom {
                flex-direction: column; /* Stack vertically */
                gap: 0.75rem;
                padding: 0.75rem;
            }

            .news-clip-card, .fav-apps-card {
                height: 150px; /* Fixed height */
            }

                .news-clip-card h3, .fav-apps-card h3 {
                    font-size: 1rem;
                }

            .news-clip-list li .info span, .fav-apps-list li .info span {
                font-size: 0.85rem;
            }

            .news-clip-list li .time-ago {
                font-size: 0.75rem;
            }
        }

        @media (max-width: 480px) {
            .smelterlogo {
                height: 350px;
            }

            .news-clip-card, .fav-apps-card {
                height: 120px;
            }

                .news-clip-card h3, .fav-apps-card h3 {
                    font-size: 0.9rem;
                }

            .news-clip-list li .info span, .fav-apps-list li .info span {
                font-size: 0.8rem;
            }

            .news-clip-list li .time-ago {
                font-size: 0.7rem;
            }
        }

        /*.production-figures {
            width: 40%; 
            display: flex;
            flex-direction: column;
        }*/
        .production-figures {
                display: flex;
                gap: 10px;
                flex-wrap: wrap; 
                width: 760px;
                height:200px;
            }

            .production-figures .table-section {
                height: 70%; /* Upper half for the table */
                overflow: auto; /* Allows scrolling if content overflows */
            }

                .production-figures .table-section .production-table {
                    width: 100%;
                    border-collapse: collapse;
                    background-color: #f9f9f9;
                    font-family: Arial, sans-serif;
                    margin: 0;
                }

                    .production-figures .table-section .production-table th {
                        background-color: #8B4513;
                        color: white;
                        padding: 0.75rem;
                        text-align: center;
                        border-bottom: 2px solid #ddd;
                    }

                        .production-figures .table-section .production-table th[colspan="5"] {
                            font-size: 1.1rem;
                            font-weight: bold;
                        }

                    .production-figures .table-section .production-table td {
                        padding: 0.5rem;
                        text-align: center;
                        border-bottom: 1px solid #ddd;
                    }

                    .production-figures .table-section .production-table tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }

                    .production-figures .table-section .production-table tr:hover {
                        background-color: #e0e0e0;
                    }

                    .production-figures .table-section .production-table td:last-child {
                        font-weight: bold;
                        color: #006400; /* Green for targets */
                    }

           .production-figures {
                display: flex;
                flex-wrap: wrap;
                gap: 20px;
                padding: 5px;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

.production-figures .button-section button {
    margin: 5px 0;
    margin-left: 2%;
    padding: 10px 15px;
    background-color: maroon;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 50%;
    box-sizing: border-box;
    font-weight: 600;
    letter-spacing: 0.5px;
    transition: background-color 0.3s ease;
}

.production-figures .button-section button:hover {
    background-color: #800000;
}

.mini-card, .mini-card2 {
    background-color: #ffffff;
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 15px 20px;
    flex: 1 1 30%;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    text-align: center;
    transition: transform 0.3s ease;
    height:100px;
    width: 720px;
}

.mini-card:hover, .mini-card2:hover {
    transform: translateY(-5px);
}

.mini-card h4, .mini-card2 h4 {
    font-size: 18px;
    color: maroon;
    margin-bottom: 10px;
    letter-spacing: 1px;
    text-transform: uppercase;
}

.mini-card h5, .mini-card2 h5 {
    font-size: 15px;
    margin: 5px 0;
    color: #333;
    font-weight: normal;
}


.mini-card2 .anode-details {
    display: flex;
    justify-content: space-between;
    gap: 10px;
    flex-wrap: wrap;
    margin-top: 10px;
}

        @media (max-width: 768px) {
            .production-figures .table-section .production-table {
                font-size: 0.9rem;
            }

                .production-figures .table-section .production-table th,
                .production-figures .table-section .production-table td {
                    padding: 0.4rem;
                }
        }
    </style>


    <style>
        .intercom-unique-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #f9f9f9;
            font-family: Arial, sans-serif;
            font-size: 0.75rem; /* Smaller font size for compactness */
            margin: 0;
        }

            .intercom-unique-table th {
                background-color: #8B4513;
                color: white;
                padding: 0.3rem;
                text-align: center;
                border-bottom: 2px solid #ddd;
                white-space: nowrap; /* Prevent text wrapping */
            }

            .intercom-unique-table td {
                padding: 0.2rem;
                text-align: center;
                border-bottom: 1px solid #ddd;
                white-space: nowrap; /* Prevent text wrapping */
            }

            .intercom-unique-table tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .intercom-unique-table tr:hover {
                background-color: #e0e0e0;
            }

        .intercom-scroll-container {
            height: calc(100% - 2.2rem); /* Adjust for h3 and button */
            overflow-y: auto; /* Vertical scrollbar only for this card */
            position: relative;
            margin-left: 0;
            padding-bottom: 40px; /* Space for control button */
        }

        @media (max-width: 768px) {
            .intercom-unique-table {
                font-size: 0.65rem;
            }

                .intercom-unique-table th,
                .intercom-unique-table td {
                    padding: 0.15rem;
                }
        }
         /* Pagination styling */
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 15px;
            padding: 10px 0;
            position: sticky;
            bottom: 0;
            background: #fff; /* Ensure visibility over scrolling content */
        }

        .pagination button {
            margin: 0 5px;
            padding: 8px 12px;
            cursor: pointer;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 0.9em;
            transition: background 0.2s;
        }

        .pagination button:hover:not(:disabled) {
            background: #0056b3;
        }

        .pagination button:disabled {
            cursor: not-allowed;
            opacity: 0.5;
            background: #ccc;
        }

        .pagination span {
            margin: 0 10px;
            font-size: 0.9em;
            color: #333;
        }


        {
           font-family: Arial, sans-serif;
           margin: 0;
           padding: 0;
           background-color: #f4f4f9;
           color: #333;
           width: 100% !important;
}







/* Main Content */
.main-content {
    padding: 20px;
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

.info-section {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    flex: 1;
    min-width: 45%;
    max-width: calc(50% - 10px);
    box-sizing: border-box;
}

@media (max-width: 768px) {
    .info-section {
        min-width: 100%;
        max-width: 100%;
    }
}


.info-section h2 {
    margin-top: 0;
    color: #8B0000;
    border-bottom: 2px solid #f0f0f0;
    padding-bottom: 10px;
}

.info-blocks {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: flex-start;
    gap: 20px;
    margin-top: 20px;
    min-height: 250px;
}

/* Semi-Circle Gauge CSS */
.gauge-container-semicircle {
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    width: 200px; /* Overall width for the gauge and its labels/markers */
    height: 180px; /* Overall height for the gauge and its labels/markers */
    box-sizing: border-box;
    padding-bottom: 30px; /* Space for the title below the gauge */
    /* Removed overflow: hidden from here, as labels/markers should extend */
}

.gauge-semicircle {
    width: 180px; /* Diameter of the gauge ring */
    height: 90px; /* Half of the diameter */
    border-radius: 90px 90px 0 0;
    background-color: #e0e0e0;
    position: absolute;
    top: 0; /* Position at the top of gauge-container-semicircle */
    left: 50%;
    transform: translateX(-50%); /* Center the semi-circle */
    overflow: hidden; /* Important for the fill/mask */
    z-index: 1; /* Behind value/labels */
}

    .gauge-semicircle .mask {
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        overflow: hidden;
    }

    .gauge-semicircle .fill {
        width: 180px;
        height: 90px;
        background-color: #4CAF50;
        border-radius: 90px 90px 0 0;
        position: absolute;
        top: 0;
        left: 0;
        transform-origin: center bottom;
        transform: rotate(calc(var(--angle, 0) * 1deg));
        transition: transform 0.5s ease-in-out;
    }

    .gauge-semicircle .inset {
        width: 140px;
        height: 70px;
        background-color: #fff;
        border-radius: 70px 70px 0 0;
        position: absolute;
        top: 20px;
        left: 20px;
        z-index: 2; /* Inset on top of fill, but below value */
    }

.gauge-value-semicircle {
    position: absolute;
    top: 50px;
    width: 100%;
    text-align: center;
    font-weight: bold;
    color: #333;
    font-size: 1.1rem;
    z-index: 4; /* Highest z-index for the main value */
    left: 50%;
    transform: translateX(-50%);
}

.gauge-title-semicircle {
    font-weight: bold;
    color: #555;
    text-align: center;
    font-size: 0.9rem;
    position: absolute;
    bottom: 0px;
    width: 100%;
    left: 50%;
    transform: translateX(-50%);
}

/* Min/Max Labels - Positioned relative to gauge-container for outer placement */
.gauge-min-label,
.gauge-max-label {
    position: absolute;
    font-size: 0.8rem;
    color: #777;
    z-index: 3; /* On top of gauge and markers */
    white-space: nowrap;
    /* Positioned via JS to be dynamic on the arc */
}

/* Sub-labels for Gauges - Positioned relative to gauge-container for outer arc */
.gauge-sub-labels {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none; /* Allows clicks to pass through to elements behind */
    z-index: 3; /* On top of markers, with higher z-index than gauge elements */
}

.gauge-sub-label {
    position: absolute;
    font-size: 0.65rem;
    color: #666;
    transform-origin: center; /* Rotate around its own center */
    white-space: nowrap;
    /* transform will be set by JS */
}

/* Mini Markers - Positioned relative to gauge-container for outer arc */
.gauge-markers {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none; /* Allows clicks to pass through to elements behind */
    z-index: 2; /* Between gauge inset (2) and labels (3), on top of gauge fill (1) */
}

.gauge-marker {
    position: absolute;
    width: 2px;
    height: 8px; /* Standard marker height */
    background-color: #999;
    transform-origin: bottom center;
    /* transform will be set by JS */
}

    .gauge-marker.main-marker {
        height: 12px; /* Longer for main markers */
        background-color: #555;
    }
/* END: Semi-Circle Gauge CSS */

/* Footer */
footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 1rem;
    position: relative;
    bottom: 0;
    width: 100%;
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


                <li class="dropdown"><a href="#" class="dropdown-toggle">Home</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/apps/erp" target="_blank">ERP System</a></li>
                        <li><a href="http://10.1.5.7/apps/hr" target="_blank">HR Portal</a></li>
                        <li><a href="http://10.1.5.7/apps/finance" target="_blank">Finance App</a></li>
                        <li><a href="http://10.1.5.7/apps/project" target="_blank">Project Mgmt</a></li>
                    </ul>
                </li>




                            <li class="dropdown">
                    <a href="#" class="dropdown-toggle">Applications</a>
                    <div class="dropdown-menu no-bullets">
                        <a href="http://10.130.82.111/ccr/" target="_blank">Civil Complaint Register</a><br>
                        <a href="http://10.1.5.175/nalcoeas/" target="_blank">Exec. Apprisal System</a><br>
                        <a href="http://10.60.235.33/Account/Login.aspx" target="_blank">SAP Integrated Vendor Assessment System</a><br>
                        <a href="http://10.130.82.111/ccell/" target="_blank">Contract Cell</a><br>
                        <a href="http://10.130.82.111/dis/" target="_blank">Drawing Information System</a><br>
                        <a href="http://10.130.82.111/ecc/" target="_blank">Energy Conservation Cell</a><br>
                        <a href="http://10.130.82.111/hrd/" target="_blank">HRD</a><br>
                        <a href="http://10.130.82.111/payviews/" target="_blank">My Finance</a><br>
                        <a href="http://10.60.235.33/Account/LoginCW.aspx" target="_blank">System Call Register -CISF & Schools</a><br>
                        <a href="http://10.130.82.111/newplantmis/default2.aspx" target="_blank">Plant MIS</a><br>
                        <a href="http://10.130.82.111/materials/" target="_blank">Purches</a><br>
                        <a href="http://10.1.5.7/Rajbhasha/Rajbhasha_info.aspx" target="_blank">राजभाषा</a><br>
                        <a href="http://10.130.82.111/newsae/" target="_blank">Safty & Environment</a><br>
                        <a href="http://10.130.82.111/sands/" target="_blank">Scrap & Salvage Cell</a><br>
                        <a href="http://10.130.82.111/imstqm/" target="_blank">Total Quality Management(TQM)</a><br>
                    </div>
                </li>

                <li class="dropdown"><a href="#" class="dropdown-toggle">Policies</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/policies/hr.pdf" target="_blank">IT Policy</a></li>
                        <li><a href="http://10.1.5.7/policies/safety.pdf" target="_blank">Nalco Energy Policy</a></li>
                        <li><a href="http://10.1.5.7/policies/it.pdf" target="_blank"></a></li>
                        <li><a href="http://10.1.5.7/policies/ethics.pdf" target="_blank">Ethics Policy</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Others</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/manuals/operations.pdf" target="_blank">Operations Manual</a></li>
                        <li><a href="http://10.1.5.7/manuals/maintenance.pdf" target="_blank">Maintenance Guide</a></li>
                        <li><a href="http://10.1.5.7/manuals/safety.pdf" target="_blank">Safety Manual</a></li>
                        <li><a href="http://10.1.5.7/manuals/quality.pdf" target="_blank">Quality Manual</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Forms and Formats</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/forms/leave.pdf" target="_blank">Leave Application</a></li>
                        <li><a href="http://10.1.5.7/forms/travel.pdf" target="_blank">Travel Request</a></li>
                        <li><a href="http://10.1.5.7/forms/reimbursement.pdf" target="_blank">Reimbursement Form</a></li>
                        <li><a href="http://10.1.5.7/forms/feedback.pdf" target="_blank">Feedback Form</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Downloads</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/downloads/software.exe" target="_blank">Software Installer</a></li>
                        <li><a href="http://10.1.5.7/downloads/drivers.zip" target="_blank">Printer Drivers</a></li>
                        <li><a href="http://10.1.5.7/downloads/templates.docx" target="_blank">Doc Templates</a></li>
                        <li><a href="http://10.1.5.7/downloads/updates.patch" target="_blank">System Updates</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Departments</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/dept/hr" target="_blank">Human Resources</a></li>
                        <li><a href="http://10.1.5.7/dept/finance" target="_blank">Finance</a></li>
                        <li><a href="http://10.1.5.7/dept/operations" target="_blank">Operations</a></li>
                        <li><a href="http://10.1.5.7/dept/it" target="_blank">IT Support</a></li>
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


                <li class="dropdown"><a href="#" class="dropdown-toggle">Vision and Mission</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>

                <li class="dropdown"><a href="#" class="dropdown-toggle">SAP</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                   <li class="dropdown"><a href="#" class="dropdown-toggle">New Applications</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                  <li class="dropdown"><a href="#" class="dropdown-toggle">Intercom</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle">Fav Apps</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                        <li><a href="https://www.nalcoindia.com" target="_blank">NALCO Official</a></li>
                        <li><a href="https://www.in.gov.in" target="_blank">India Govt Portal</a></li>
                        <li><a href="http://10.1.5.7/intranet" target="_blank">Internal Intranet</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">LogIn</a>
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
    font-size: 28px;
    color: white;
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.3)), url('../NALCO_Intranet/Images/smelter.jpg') no-repeat center;
    background-size: cover;
    border-radius: 5px;
    margin-left: 15px;
    letter-spacing: 6px;
    text-transform: uppercase;
    font-family: 'Segoe UI', sans-serif;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
    ">
         S M E L T E R
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

            <!-- SmelterLogo Card -->
            <%--<div class="card smelterlogo" id="smelterlogo-card">
                <div class="smelterlogo-top" style="background-image: url('Images/smelterlogobackground.jpg'); background-repeat: no-repeat; background-size: cover;">
                    <img src="Images/smelterlogo.jpg" style="height: 100%; width: 70%;" />
                </div>
                <div class="smelterlogo-bottom">
                    <div class="card news-clip-card" id="news-clip-card">
                        <h3>News Clip</h3>
                        <ul class="news-clip-list">
                            <li>
                                <div class="info">
                                    <span>Chirpings new</span>
                                    <span class="time-ago">15 Apr 2025</span>
                                </div>
                            </li>
                            <li>
                                <div class="info">
                                    <span>Chirpings</span>
                                    <span class="time-ago">11 Apr 2025</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="card fav-apps-card" id="fav-apps-card">
                        <h3>Fav Apps</h3>
                        <ul class="fav-apps-list">
                            <li>
                                <div class="info">
                                    <span>HR Dashboard</span>
                                </div>
                            </li>
                            <li>
                                <div class="info">
                                    <span>Find Nalconian</span>
                                </div>
                            </li>
                            <li>
                                <div class="info">
                                    <span>Smelter My Finance</span>
                                </div>
                            </li>
                            <li>
                                <div class="info">
                                    <span>IT Asset Complaint</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>--%>


       

            <div class="card birthday-card" style="background: no-repeat center; background-size: cover; width: 15%;">
                <h3>Birthdays</h3>
                <div class="scroll-container">
                    <ul class="scroll-list" id="birthday-slider">
                        <!-- Birthdays will be populated dynamically -->
                    </ul>
                    <button class="scroll-control-btn" onclick="toggleScroll(this, 'birthday-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
                </div>
            </div>
        </section>



        <section class="middle-section">
           <div class="card">
        <h3>What's new</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="notices-list"  style="height:20px;">
                <!-- Notices will be populated dynamically -->
            </ul>
             <div id="paginationWhatsnew" style="margin-top: 60%; text-align: center;"></div>
            <!-- Pagination controls will be added here dynamically -->
        </div>
    </div>

            <div class="card">
                <h3>Circulars</h3>
                <div class="scroll-container">
                    <ul class="scroll-list" id="circular-list"  style="height:20px;">
                        <!-- Circulars will be populated dynamically -->
                    </ul>
                    <div id="paginationCircular" style="margin-top: 60%; text-align: center;"></div>
                </div>
            </div>

            <div class="card">
                <h3>MIS Reports</h3>
                <div class="scroll-container">
                    <ul class="scroll-list" id="events-list" style="height:20px;">
                        <!-- Events will be populated dynamically -->
                    </ul>
                    <div id="paginationReports" style="margin-top: 60%; text-align: center;"></div>
                </div>
            </div>
           <div class="card">
                <h3>Doctor's Availability</h3>
                <div class="scroll-container">
                            <ul class="scroll-list" id="doctors-slider">
                                <!-- Notices will be populated dynamically -->
                            </ul>
                            <button class="scroll-control-btn" onclick="toggleScroll(this, 'doctors-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
                        </div>
            </div>
            <%-- <div class="card">
                <h3>Login To NALCOAPPS</h3>
                <form class="login-form">
                    <label for="username">Username:</label>
                    <input type="text" id="username" placeholder="Username" required>
                    <label for="password">Password:</label>
                    <input type="password" id="password" placeholder="Password" required>
                    <button type="submit" class="login-btn">Login</button>
                </form>
            </div>--%>

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


        <%--Bottom Section--%>

        <section class="bottom-section ">
                <%--<div class="smelterlogo-top" style="background-image: url('Images/smelterlogobackground.jpg'); background-repeat: no-repeat; background-size: cover;">
                    <img src="Images/smelterlogo.jpg" style="height: 100%; width: 70%;" />
                </div>--%>


        <div class="production-figures">
            <div class="mini-card">
                <h4>Cast House, RP</h4>
                <h5>Cast Metal (MT):<span style="font-size: larger;color: red; font-weight: bolder;">1431.745</span> </h5>
            </div>


<main class="main-content">
    <section class="info-section" id="potline-section">
        <h2>Potline Status</h2>
        <div class="info-blocks">
            <div class="gauge-container-semicircle">
                <div class="gauge-semicircle">
                    <div class="mask">
                        <div class="fill" data-value="96" data-min="0" data-max="100" data-unit="%"></div>
                    </div>
                    <div class="inset"></div>
                </div>
                <div class="gauge-min-label">0%</div>
                <div class="gauge-max-label">100%</div>
                <div class="gauge-sub-labels"></div>
                <div class="gauge-markers"></div>
                <div class="gauge-value-semicircle">96%</div>
                <div class="gauge-title-semicircle">Current Efficiency</div>
            </div>
            <div class="gauge-container-semicircle">
                <div class="gauge-semicircle">
                    <div class="mask">
                        <div class="fill" data-value="955" data-min="800" data-max="1000" data-unit="°C"></div>
                    </div>
                    <div class="inset"></div>
                </div>
                <div class="gauge-min-label">800°C</div>
                <div class="gauge-max-label">1000°C</div>
                <div class="gauge-sub-labels"></div>
                <div class="gauge-markers"></div>
                <div class="gauge-value-semicircle">955°C</div>
                <div class="gauge-title-semicircle">Avg. Temp</div>
            </div>
            <div class="gauge-container-semicircle">
                <div class="gauge-semicircle">
                    <div class="mask">
                        <div class="fill" data-value="2150" data-min="0" data-max="2500" data-unit="T"></div>
                    </div>
                    <div class="inset"></div>
                </div>
                <div class="gauge-min-label">0T</div>
                <div class="gauge-max-label">2500T</div>
                <div class="gauge-sub-labels"></div>
                <div class="gauge-markers"></div>
                <div class="gauge-value-semicircle">2150T</div>
                <div class="gauge-title-semicircle">Metal Prod.</div>
            </div>
        </div>
    </section>

    <section class="info-section" id="carbon-section">
        <h2>Carbon Area Status</h2>
        <div class="info-blocks">
            <div class="gauge-container-semicircle">
                <div class="gauge-semicircle">
                    <div class="mask">
                        <div class="fill" data-value="1150" data-min="1000" data-max="1200" data-unit="°C"></div>
                    </div>
                    <div class="inset"></div>
                </div>
                <div class="gauge-min-label">1000°C</div>
                <div class="gauge-max-label">1200°C</div>
                <div class="gauge-sub-labels"></div>
                <div class="gauge-markers"></div>
                <div class="gauge-value-semicircle">1150°C</div>
                <div class="gauge-title-semicircle">Baking Furnace</div>
            </div>
            <div class="gauge-container-semicircle">
                <div class="gauge-semicircle">
                    <div class="mask">
                        <div class="fill" data-value="88" data-min="0" data-max="100" data-unit="%"></div>
                    </div>
                    <div class="inset"></div>
                </div>
                <div class="gauge-min-label">0%</div>
                <div class="gauge-max-label">100%</div>
                <div class="gauge-sub-labels"></div>
                <div class="gauge-markers"></div>
                <div class="gauge-value-semicircle">88%</div>
                <div class="gauge-title-semicircle">Paste Plant Out</div>
            </div>
            <div class="gauge-container-semicircle">
                <div class="gauge-semicircle">
                    <div class="mask">
                        <div class="fill" data-value="4800" data-min="0" data-max="5000" data-unit=""></div>
                    </div>
                    <div class="inset"></div>
                </div>
                <div class="gauge-min-label">0</div>
                <div class="gauge-max-label">5000</div>
                <div class="gauge-sub-labels"></div>
                <div class="gauge-markers"></div>
                <div class="gauge-value-semicircle">4800</div>
                <div class="gauge-title-semicircle">Rodded Anodes</div>
            </div>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2024 NALCO Smelter Plant. All Rights Reserved.</p>
</footer>

<script>document.addEventListener("DOMContentLoaded", () => {
        initializeGauges();
    });

    function initializeGauges() {
        document.querySelectorAll('.gauge-container-semicircle').forEach(gaugeContainer => {
            const fillElement = gaugeContainer.querySelector('.fill');
            const valueElement = gaugeContainer.querySelector('.gauge-value-semicircle');

            const value = parseFloat(fillElement.getAttribute('data-value'));
            const min = parseFloat(fillElement.getAttribute('data-min'));
            const max = parseFloat(fillElement.getAttribute('data-max'));
            const unit = fillElement.getAttribute('data-unit') || '';

            const percentage = (value - min) / (max - min);
            const angle = percentage * 180;
            fillElement.style.setProperty('--angle', angle);

            valueElement.textContent = ${ value }${ unit };

            const gaugeSemiCircle = gaugeContainer.querySelector('.gauge-semicircle');
            // Get the computed width and top of the gauge semicircle itself
            const gaugeDiameter = parseFloat(getComputedStyle(gaugeSemiCircle).width);
            const gaugeRadius = gaugeDiameter / 2;
            const gaugeTopOffset = parseFloat(getComputedStyle(gaugeSemiCircle).top); // This should be 0px

            generateLabelsAndMarkers(gaugeContainer, min, max, unit, gaugeRadius, gaugeTopOffset);
        });
    }

    function generateLabelsAndMarkers(gaugeContainer, min, max, unit, gaugeRadius, gaugeTopOffset) {
        const subLabelsContainer = gaugeContainer.querySelector('.gauge-sub-labels');
        const markersContainer = gaugeContainer.querySelector('.gauge-markers');
        const minLabelElement = gaugeContainer.querySelector('.gauge-min-label');
        const maxLabelElement = gaugeContainer.querySelector('.gauge-max-label');

        subLabelsContainer.innerHTML = '';
        markersContainer.innerHTML = '';

        // Radii for positioning elements on the outer arc.
        // These values are fine-tuned to place elements clearly outside the gauge.
        const outerGaugeEdgeRadius = gaugeRadius;
        const markerArcRadius = outerGaugeEdgeRadius + 10; // Increased further out for markers
        const labelArcRadius = outerGaugeEdgeRadius + 35; // Increased even further out for labels to avoid overlap

        // Calculate center of the semi-circle relative to gauge-container-semicircle's top-left
        const centerX = gaugeRadius;
        const centerY = gaugeTopOffset + gaugeRadius;

        // --- Position Min/Max Labels ---
        // Min Label (at 0 degrees on the gauge, which is the left end)
        // Use angle 180 for Math.cos/sin for the left side
        let angleRadiansMin = 180 * Math.PI / 180;
        let xMin = centerX + (labelArcRadius * Math.cos(angleRadiansMin));
        let yMin = centerY - (labelArcRadius * Math.sin(angleRadiansMin));
        minLabelElement.style.left = ${ xMin } px;
        minLabelElement.style.top = ${ yMin } px;
        // For min/max labels, often best to keep them horizontal for readability, adjusted for position.
        // translate(-50%, -50%) centers the text block on the (x,y) point.
        minLabelElement.style.transform = translate(-50 %, -50 %);

        // Max Label (at 180 degrees on the gauge, which is the right end)
        // Use angle 0 for Math.cos/sin for the right side
        let angleRadiansMax = 0 * Math.PI / 180;
        let xMax = centerX + (labelArcRadius * Math.cos(angleRadiansMax));
        let yMax = centerY - (labelArcRadius * Math.sin(angleRadiansMax));
        maxLabelElement.style.left = ${ xMax } px;
        maxLabelElement.style.top = ${ yMax } px;
        maxLabelElement.style.transform = translate(-50 %, -50 %);

        // --- Generate Sub-labels ---
        let numLabels = 0;
        const range = max - min;

        // Determine number of labels based on range for better distribution
        if (range > 1000) { numLabels = 4; }
        else if (range > 100) { numLabels = 3; }
        else if (range > 50) { numLabels = 2; }
        else if (range >= 10) { numLabels = 1; }

        if (numLabels > 0) {
            const step = range / (numLabels + 1);

            for (let i = 1; i <= numLabels; i++) {
                const labelValue = min + (step * i);
                let labelText = Number.isInteger(labelValue) ? ${ Math.round(labelValue)
            }${ unit } : ${ labelValue.toFixed(1) }${ unit };

            const labelDiv = document.createElement('div');
            labelDiv.className = 'gauge-sub-label';
            labelDiv.textContent = labelText;

            const normalizedValue = (labelValue - min) / range; // 0 to 1
            // Convert normalized value (0 to 1) to an angle for Math.cos/sin:
            // 180 (left) down to 0 (right).
            const angleDegreesForMath = 180 - (normalizedValue * 180);
            const angleRadiansForMath = angleDegreesForMath * Math.PI / 180;

            // Calculate position
            const x = centerX + (labelArcRadius * Math.cos(angleRadiansForMath));
            const y = centerY - (labelArcRadius * Math.sin(angleRadiansForMath));

            labelDiv.style.left = ${ x } px;
            labelDiv.style.top = ${ y } px;

            // Calculate text rotation so it's always readable and "fans out" correctly.
            // The text itself should be rotated perpendicular to the radius, then potentially flipped for readability.
            let textRotation = angleDegreesForMath - 90; // Makes text perpendicular to the radius

            // If on the left side (angleForMath > 90), add 180 degrees to flip text upright
            if (angleDegreesForMath > 90) {
                textRotation += 180;
            }

            labelDiv.style.transform = translate(-50 %, -50 %) rotate(${ textRotation }deg);

            subLabelsContainer.appendChild(labelDiv);
        }
    }

    // --- Generate Markers ---
    const markerIntervalDegrees = 10; // Markers every 10 degrees

    for (let gaugeAngleDegrees = 0; gaugeAngleDegrees <= 180; gaugeAngleDegrees += markerIntervalDegrees) {
        // Convert gauge angle (0 to 180 from left to right) to Math angle (180 to 0 from left to right)
        const angleDegreesForMath = 180 - gaugeAngleDegrees;
        const angleRadiansForMath = angleDegreesForMath * Math.PI / 180;

        const markerDiv = document.createElement('div');
        markerDiv.className = 'gauge-marker';

        // Make main markers longer at 0, 90, and 180 degrees
        if (gaugeAngleDegrees === 0 || gaugeAngleDegrees === 90 || gaugeAngleDegrees === 180) {
            markerDiv.classList.add('main-marker');
        }

        // Calculate position on the arc
        const x = centerX + (markerArcRadius * Math.cos(angleRadiansForMath));
        const y = centerY - (markerArcRadius * Math.sin(angleRadiansForMath));

        markerDiv.style.left = ${ x } px;
        markerDiv.style.top = ${ y } px;

        // Marker rotation: it should point outwards radially.
        // The angle angleDegreesForMath is correct for rotation.
        // translate(-50%, -100%) ensures the bottom-center of the marker is at the calculated (x,y) point
        // and the marker extends upwards/outwards from that point.
        markerDiv.style.transform = translate(-50 %, -100 %) rotate(${ angleDegreesForMath }deg);
        markersContainer.appendChild(markerDiv);
    }
    }





    <div class="card superannuation-card" style="background: url('../NALCO_Intranet/Images/retirenew.jpg') no-repeat center; background-size: cover; width: 15%;">
        <h3>Superannuating Employees</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="superannuating-slider">
                <!-- Superannuations will be populated dynamically -->
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'superannuating-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
        </div>
    </div>
        </section >

        <section class="bottom-section2">
            <div class="cards-slider-wrapper">
                <div class="cards-slider">
                    <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/Nalco-Bhavan.jpg') no-repeat center; background-size: cover;  height:100px; width:242px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Default.aspx';">
                        <h2>Corporate</h2>
                    </div>
              <%--  <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/smelter.jpg') no-repeat center; background-size: cover;">
                    <h2>Smelter</h2>
                </div>--%>
                    <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/CPP.jpg') no-repeat center; background-size: cover; height:100px; width:242px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/CPP.aspx';">
                        <h2>CPP</h2>
                    </div>
                    <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/refiner.jpg') no-repeat center; background-size: cover; height:100px; width:242px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Refinary_New.aspx';">
                        <h2>Refinery</h2>
                    </div>
                    <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/NalcoMines.jpg') no-repeat center; background-size: cover; height:100px; width:242px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Mines.aspx';">
                        <h2>Mines</h2>
                    </div>
                    <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/marketstock.jpg') no-repeat center; background-size: cover; height:100px; width:242px;">
                        <h2>Market Watch</h2>
                    </div>
                </div>
            </div>


        </section>


    </div >
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
  <footer style="height=20px;">
        <p>© 2025 NALCO. All Rights Reserved.</p>
    </footer>
    <script src="ChartJs/Chart.js"></script>
<script>
var xValues = [
    "Bauxite Excavation",
    "Bauxite Transportation",
    "Hydrate",
    "Calcined Alumina",
    "Power Generation",
    "SGH"
];

var yValues = [22480, 21346, 6402, 7188, 1507, 40];

var barColors = [
    "#FF6384", "#36A2EB", "#FFCE56", "#4BC0C0", "#9966FF", "#FF9F40"
];

new Chart("smallChart", {
    type: "bar",
    data: {
        labels: xValues,
        datasets: [{
            label: "Day Production",
            backgroundColor: barColors,
            data: yValues
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: { display: false },
            title: {
                display: true,
                text: "Day-wise Production as on 14-04-2025"
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: "MT / MU"
                }
            }
        }
    }
});
</script>


<script>
    // Indian Government Holidays for 2025
    const holidays = [
        { date: new Date(2025, 0, 26), name: "Republic Day" },
        { date: new Date(2025, 1, 26), name: "Maha Shivaratri" },
        { date: new Date(2025, 2, 14), name: "Holi" },
        { date: new Date(2025, 2, 31), name: "Idul Fitr" },
        { date: new Date(2025, 3, 10), name: "Mahavir Jayanti" },
        { date: new Date(2025, 3, 14), name: "Dr. B.R. Ambedkar Jayanti" },
        { date: new Date(2025, 3, 18), name: "Good Friday" },
        { date: new Date(2025, 5, 7), name: "Idul Adha" },
        { date: new Date(2025, 5, 27), name: "Muharram" },
        { date: new Date(2025, 7, 15), name: "Independence Day" },
        { date: new Date(2025, 8, 5), name: "Janmashtami" },
        { date: new Date(2025, 8, 16), name: "Milad-un-Nabi" },
        { date: new Date(2025, 9, 2), name: "Gandhi Jayanti" },
        { date: new Date(2025, 9, 20), name: "Dussehra" },
        { date: new Date(2025, 10, 9), name: "Diwali" },
        { date: new Date(2025, 10, 24), name: "Guru Nanak Jayanti" },
        { date: new Date(2025, 11, 25), name: "Christmas Day" }
    ];

    const today = new Date();
    let currentDate = new Date(2025, 2); // Starting from March 2025

    function generateCalendar() {
        const monthYear = document.getElementById("month-year");
        const calendarGrid = document.getElementById("calendar-grid");

        calendarGrid.innerHTML = `
            <span class="day-names">Sun</span>
            <span class="day-names">Mon</span>
            <span class="day-names">Tue</span>
            <span class="day-names">Wed</span>
            <span class="day-names">Thu</span>
            <span class="day-names">Fri</span>
            <span class="day-names">Sat</span>
        `;

        const monthNames = [
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        ];
        monthYear.textContent = `${monthNames[currentDate.getMonth()]} ${currentDate.getFullYear()}`;

        const firstDay = new Date(currentDate.getFullYear(), currentDate.getMonth(), 1).getDay();
        const daysInMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate();

        for (let i = 0; i < firstDay; i++) {
            calendarGrid.innerHTML += `<span></span>`;
        }

        for (let day = 1; day <= daysInMonth; day++) {
            const date = new Date(currentDate.getFullYear(), currentDate.getMonth(), day);
            let className = "";

            if (
                date.getDate() === today.getDate() &&
                date.getMonth() === today.getMonth() &&
                date.getFullYear() === today.getFullYear()
            ) {
                className = "current-day";
            }

            const holiday = holidays.find(h =>
                h.date.getDate() === day &&
                h.date.getMonth() === currentDate.getMonth() &&
                h.date.getFullYear() === currentDate.getFullYear()
            );

            if (holiday) {
                className += className ? " holiday" : "holiday";
            }

            calendarGrid.innerHTML += `<span class="${className.trim()}" title="${holiday ? holiday.name : ''}">${day}</span>`;
        }
    }

    document.getElementById("prev-month").addEventListener("click", () => {
        currentDate.setMonth(currentDate.getMonth() - 1);
        generateCalendar();
    });

    document.getElementById("next-month").addEventListener("click", () => {
        currentDate.setMonth(currentDate.getMonth() + 1);
        generateCalendar();
    });

    generateCalendar();

    function populateEmployeeList(listId, items, isDoctorList = false) {
        const list = document.getElementById(listId);
        list.innerHTML = '';

        items.forEach(item => {
            const li = document.createElement('li');
            li.innerHTML = `
                <img src="${item.image}" alt="${item.name}">
                <div class="info">
                    <span class="employee-name">${item.name}</span>
                    <span class="designation">${item.designation}</span>
                    ${isDoctorList && item.specialization ? `<span class="specialization">${item.specialization}</span>` : ''}
                </div>
            `;
            list.appendChild(li);
        });

        // Duplicate items for scrolling
        items.forEach(item => {
            const li = document.createElement('li');
            li.innerHTML = `
                <img src="${item.image}" alt="${item.name}">
                <div class="info">
                    <span class="employee-name">${item.name}</span>
                    <span class="designation">${item.designation}</span>
                    ${isDoctorList && item.specialization ? `<span class="specialization">${item.specialization}</span>` : ''}
                </div>
            `;
            list.appendChild(li);
        });

        if (items.length > 1) {
            const duration = items.length * 6;
            list.style.animation = `scrollUp ${duration}s linear infinite`;
        } 
        else {
            list.style.animation = 'none';
        }
    }

    // Fetch and display employee data
    Promise.all([
        fetch('birthdays.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch birthdays')),
        fetch('superannuations.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch superannuations')),
        fetch('doctors.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch doctors'))
    ])
    .then(([birthdays, superannuations, doctors]) => {
        populateEmployeeList('birthday-slider', birthdays);
        populateEmployeeList('superannuating-slider', superannuations);
        populateEmployeeList('doctors-slider', doctors, true); // Mark this as doctor list
    })
    .catch(error => {
        console.error('Error fetching employee data:', error);
        document.getElementById('birthday-slider').innerHTML = '<li>Failed to load birthdays</li>';
        document.getElementById('superannuating-slider').innerHTML = '<li>Failed to load superannuations</li>';
        document.getElementById('doctors-slider').innerHTML = '<li>Failed to load doctors</li>';
    });
</script>


    <script>
        document.querySelectorAll('.dropdown-toggle').forEach(toggle => {
            toggle.addEventListener('click', function(e) {
                e.preventDefault();
                const dropdown = this.parentElement; 
                const isActive = dropdown.classList.contains('active');
                document.querySelectorAll('.dropdown').forEach(d => d.classList.remove('active'));
                if (!isActive) {
                    dropdown.classList.add('active');
                }
            });
        });

        document.addEventListener('click', function(e) {
            if (!e.target.closest('.dropdown')) {
                document.querySelectorAll('.dropdown').forEach(d => d.classList.remove('active'));
            }
        });
        document.querySelectorAll('.scroll-list').forEach(list => {
            const itemCount = list.children.length;
            if (itemCount > 1) {
                const duration = itemCount * 3; 
                list.style.animation = `scrollUp ${duration}s linear infinite`;
            } else {
                list.style.animation = 'none'; 
            }
        });


        function toggleScroll(button, listId) {
            const list = document.getElementById(listId);
            const isPaused = list.style.animationPlayState === 'paused';
            list.style.animationPlayState = isPaused ? 'running' : 'paused';
            button.textContent = isPaused ? '⏸' : '▶';
        }

        document.querySelectorAll('.scroll-list').forEach(list => {
            const items = Array.from(list.querySelectorAll('li'));
            if (items.length > 0) { // Apply to all lists with items
                // Duplicate content
                items.forEach(item => list.appendChild(item.cloneNode(true)));

                // Set animation duration based on number of original items
                const itemCount = items.length; // Original count before duplication
                const duration = itemCount * 5; // 5s per item, adjust as needed
                list.style.animationDuration = `${duration}s`;
            } else {
                list.style.animation = 'none'; // No items, no animation
            }
        });

        // Update toggleScroll function
        function toggleScroll(button, listId) {
            const list = document.getElementById(listId);
            const isPaused = list.style.animationPlayState === 'paused';
            list.style.animationPlayState = isPaused ? 'running' : 'paused';
            button.textContent = isPaused ? '⏸' : '▶';
        }
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

            const basePath = './';
            const files = {
                chatbotData: `${basePath}chatbot-data.json`,
                nalcoInfo: `${basePath}nalco-info.json`,
                dopData: `${basePath}DOPdata.json`,
                synonymDictionary: `${basePath}synonym-dictionary.json`
            };

            Promise.all([
                fetchChatbotData(files.chatbotData, 'chatbot data'),
                fetchChatbotData(files.nalcoInfo, 'NALCO info'),
                fetchChatbotData(files.dopData, 'DOP data'),
                fetchChatbotData(files.synonymDictionary, 'synonym dictionary')
            ])
            .then(([chatbotData, nalcoInfo, dopData, synonyms]) => {
                nalcoChatbotModel = chatbotData || {};
                nalcoInfoModel = nalcoInfo || {};
                dopDataModel = Array.isArray(dopData) ? dopData : [];
                synonymDictionary = synonyms?.synonyms || {};
                console.log('Data loaded successfully:', { nalcoChatbotModel, nalcoInfoModel, dopDataModel, synonymDictionary });
                console.log('DOP Clause Numbers:', dopDataModel.map(clause => clause.Cl_No));
                console.log('Full DOP Data Length:', dopDataModel.length);
                if (dopDataModel.length < 49) {
                    console.error('DOP data incomplete! Expected 49 clauses, got:', dopDataModel.length);
                    addBotMessage("Warning: DOP data is incomplete. Some clauses may not be available.");
                }
            })
            .catch(error => {
                console.error('Data loading failed:', error);
                addBotMessage("Critical error: Data couldn’t load. Functionality may be severely limited.");
            });

            function fetchChatbotData(filePath, fileName) {
                console.log(`Fetching ${fileName} from ${filePath}`);
                return fetch(filePath, { cache: 'no-store' })
                    .then(response => {
                        if (!response.ok) {
                            throw new Error(`${fileName} fetch failed: ${response.status} ${response.statusText}`);
                        }
                        return response.text();
                    })
                    .then(text => {
                        console.log(`${fileName} raw data length:`, text.length);
                        console.log(`${fileName} raw data (first 500 chars):`, text.substring(0, 500));
                        const data = JSON.parse(text);
                        if (!Array.isArray(data) && fileName === 'DOP data') {
                            throw new Error(`${fileName} is not an array`);
                        }
                        return data;
                    })
                    .catch(error => {
                        console.error(`Error fetching ${fileName}:`, error);
                        addBotMessage(`Failed to load ${fileName}. Some features may be limited.`);
                        return fileName === 'DOP data' ? [] : {};
                    });
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

                window.selectDataSource = function(source) {
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
                addBotMessage(`I didn’t quite understand that. You can ask about ${selectedDataSource} data, or type 'help' for options!`);
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
                        return `It’s currently ${now.toLocaleTimeString()} on ${now.toDateString()}.`;
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
                        return "I’m here to assist with DOP data! You can ask about:\nDOP overview (e.g., 'dop')\nHuman Resources clauses (e.g., 'human resources')\nSpecific clauses (e.g., 'clause 1.1', '1.14(a)', or 'what’s 3.39')\nOr just say 'time' for the current date and time!";
                    }
                    if (keyword === 'time') {
                        const now = new Date();
                        return `It’s currently ${now.toLocaleTimeString()} on ${now.toDateString()}.`;
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

            addBotMessage(response || `I couldn’t find an exact match in ${selectedDataSource} data.\nTry rephrasing your query (e.g., 'nalco operations', 'clause 1.1') or type 'help' for assistance!`);
        }
        });


    </script>
    <script>
    // Function to format date (YYYY-MM-DD to MMM DD, YYYY)
        // Function to format date (YYYY-MM-DD to MMM DD, YYYY)
        function formatDate(dateStr) {
            const date = new Date(dateStr);
            if (isNaN(date)) return 'Invalid Date'; // Handle invalid dates
            const options = { year: 'numeric', month: 'short', day: '2-digit' };
            return date.toLocaleDateString('en-US', options);
        }

        // Function to populate scroll list with pagination
        function populateScrollList(listId, items, page = 1, itemsPerPage = 5) {
            const list = document.getElementById(listId);
            if (!list) {
                console.error(`Element with ID ${listId} not found`);
                return;
            }
            list.innerHTML = ''; // Clear any existing content

            if (!items || items.length === 0) {
                list.innerHTML = '<li>No items available</li>';
                return;
            }

            // Calculate pagination boundaries
            const totalPages = Math.ceil(items.length / itemsPerPage);
            const currentPage = Math.max(1, Math.min(page, totalPages)); // Ensure valid page
            const startIndex = (currentPage - 1) * itemsPerPage;
            const endIndex = Math.min(startIndex + itemsPerPage, items.length);
            const paginatedItems = items.slice(startIndex, endIndex);

            // Populate paginated items
            paginatedItems.forEach(item => {
                const li = document.createElement('li');
                li.innerHTML = `
            <div class="info">
                <span>${item.title || 'Untitled'}</span>
                <span class="time-ago">${formatDate(item.date)}</span>
            </div>
            <span class="download-icon" title="Download" data-url="${item.fileUrl || ''}" onclick="downloadItem(this)">
                <i class="fa fa-download" aria-hidden="true"></i>
            </span>
        `;
                list.appendChild(li);
            });

            // Add pagination controls
            const paginationDiv = document.createElement('div');
            paginationDiv.className = 'pagination';
            let paginationHTML = '';

            // Generate page number buttons
            for (let i = 1; i <= totalPages; i++) {
                paginationHTML += `
            <button 
                onclick="populateScrollList('${listId}', ${JSON.stringify(items)}, ${i}, ${itemsPerPage})" 
                class="${i === currentPage ? 'active' : ''}"
            >${i}</button>
        `;
            }

            paginationDiv.innerHTML = paginationHTML || '<span>No pages available</span>'; // Fallback for no pages
            list.parentNode.appendChild(paginationDiv);
        }

            // Modified downloadItem function
            function downloadItem(element) {
                const url = element.getAttribute('data-url');
                if (url) {
                    window.open(url, '_blank');
                } else {
                    alert('Download link not available.');
                }
            }

            // Fetch and populate data from three JSON files
            Promise.all([
                //fetch('notices.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch notices')),
                //fetch('circulars.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch circulars')),
                //fetch('events.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch events'))
            ])
            .then(([notices, circulars, events]) => {
                //populateScrollList('notices-list', notices);
                //populateScrollList('circular-list', circulars);
                //populateScrollList('events-list', events);
            })
            .catch(error => {
                console.error('Error fetching data:', error);
                const noticesList = document.getElementById('notices-list');
                const circularList = document.getElementById('circular-list');
                const eventsList = document.getElementById('events-list');
                if (noticesList) noticesList.innerHTML = '<li>Failed to load notices</li>';
                if (circularList) circularList.innerHTML = '<li>Failed to load circulars</li>';
                if (eventsList) eventsList.innerHTML = '<li>Failed to load events</li>';
            });
    </script>

   <script>
  const notices = [
    { title: "Minimum Wages Rate Chart", date: "2025-03-18", fileUrl: "http://10.1.5.7/notices/minimum_wages.pdf" },
    { title: "E-mail Id Nomenclature Policy", date: "2025-03-15", fileUrl: "http://10.1.5.7/notices/email_policy.pdf" },
    { title: "SOP for NALCO's Website Maintenance", date: "2025-03-10", fileUrl: "http://10.1.5.7/notices/website_sop.pdf" },
    { title: "B-Type Garages for Two Wheelers", date: "2025-03-22", fileUrl: "http://10.1.5.7/notices/garages.pdf" },
    { title: "Online Submission of Sizes for Liveries", date: "2025-04-05", fileUrl: "http://10.1.5.7/notices/liveries.pdf" },
    { title: "CSR Initiative Launch", date: "2025-04-15", fileUrl: "http://10.1.5.7/notices/csr_launch.pdf" }
  ];

  const itemsPerPage = 5;
  let currentPage = 1;

  function displayWhatsnew(page) {
      const start = (page - 1) * itemsPerPage;
      const end = start + itemsPerPage;
      const paginatedItems = notices.slice(start, end);

      const list = document.getElementById("notices-list");
      list.innerHTML = "";

      paginatedItems.forEach(item => {
          const li = document.createElement("li");
          li.innerHTML = `
      <div class="info" style="display: flex; justify-content: space-between; align-items: center;">
        <div>
          <span style="font-weight: 500;">${item.title}</span>
          <br>
          <small class="time-ago" style="color: gray;">${formatDate(item.date)}</small>
        </div>
        <span class="download-icon" title="Download" data-url="${item.fileUrl}" onclick="downloadItem(this)" style="cursor: pointer; font-size: 12px; margin-left: 10px;">
          <i class="fa fa-download" aria-hidden="true"></i>
        </span>
      </div>
    `;
          li.style.borderBottom = "1px solid #ccc";
          li.style.padding = "10px 0";
          list.appendChild(li);
      });

      renderPagination();
  }


  function renderPagination() {
    const pageCount = Math.ceil(notices.length / itemsPerPage);
    const pagination = document.getElementById("paginationWhatsnew");
    pagination.innerHTML = "";

    for (let i = 1; i <= pageCount; i++) {
      const btn = document.createElement("button");
      btn.textContent = i;
      btn.style.margin = "0 5px";
      btn.style.padding = "4px 8px";
      btn.style.backgroundColor = i === currentPage ? "#8B0000" : "#ddd";
      btn.style.color = i === currentPage ? "white" : "black";
      btn.style.border = "none";
      btn.style.borderRadius = "4px";
      btn.style.cursor = "pointer";

      btn.onclick = () => {
        currentPage = i;
        displayWhatsnew(currentPage);
      };

      pagination.appendChild(btn);
    }
  }
  displayWhatsnew(currentPage);
   </script>

    <script>
  const circulars = [
    {
      "title": "B-Type Garages for Two Wheelers",
      "date": "2025-03-22",
      "fileUrl": "http://10.1.5.7/circulars/garages.pdf"
    },
    {
      "title": "Online Submission of Sizes for Liveries",
      "date": "2025-04-05",
      "fileUrl": "http://10.1.5.7/circulars/liveries.pdf"
    },
    {
      "title": "CSR Initiative Launch",
      "date": "2025-04-15",
      "fileUrl": "http://10.1.5.7/circulars/csr_launch.pdf"
    },
    {
      "title": "Safety Protocol Update",
      "date": "2025-03-25",
      "fileUrl": "http://10.1.5.7/circulars/safety_protocol.pdf"
    },
    {
      "title": "Employee Wellness Program",
      "date": "2025-04-10",
      "fileUrl": "http://10.1.5.7/circulars/wellness_program.pdf"
    },
    {
      "title": "IT System Upgrade",
      "date": "2025-04-20",
      "fileUrl": "http://10.1.5.7/circulars/it_upgrade.pdf"
    }
  ];

  const itemsPerPageCircular = 5;
  let currentPageCircular = 1;

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
            <span style="font-weight: 500;">${item.title}</span>
            <br>
            <small class="time-ago" style="color: gray;">${formatDate(item.date)}</small>
          </div>
          <span class="download-icon" title="Download" data-url="${item.fileUrl}" onclick="downloadItem(this)" style="cursor: pointer; font-size: 12px; margin-left: 10px;">
            <i class="fa fa-download" aria-hidden="true"></i>
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
        btn.style.margin = "0 5px";
        btn.style.padding = "4px 8px";
        btn.style.backgroundColor = i === currentPage ? "#8B0000" : "#ddd";
        btn.style.color = i === currentPage ? "white" : "black";
        btn.style.border = "none";
        btn.style.borderRadius = "4px";
        btn.style.cursor = "pointer";
      btn.onclick = () => {
        currentPageCircular = i;
        displayCirculars(i);
      };
      container.appendChild(btn);
    }
  }

  function downloadItem(el) {
    const url = el.getAttribute("data-url");
    window.open(url, "_blank");
  }

  function formatDate(dateString) {
    const date = new Date(dateString);
    const now = new Date();
    const diff = Math.floor((now - date) / (1000 * 60 * 60 * 24)); // days

    if (diff === 0) return "Today";
    if (diff === 1) return "Yesterday";
    if (diff < 7) return `${diff} days ago`;

    return date.toLocaleDateString();
  }

  // Initialize circulars display
  displayCirculars(currentPageCircular);
    </script>
    <script>
  const events = [
    {
      "title": "B-Type Garages for Two Wheelers",
      "date": "2025-03-22",
      "fileUrl": "http://10.1.5.7/events/garages.pdf"
    },
    {
      "title": "Online Submission of Sizes for Liveries",
      "date": "2025-04-05",
      "fileUrl": "http://10.1.5.7/events/liveries.pdf"
    },
    {
      "title": "CSR Initiative Launch",
      "date": "2025-04-15",
      "fileUrl": "http://10.1.5.7/events/csr_launch.pdf"
    },
    {
      "title": "Annual Sports Meet",
      "date": "2025-03-30",
      "fileUrl": "http://10.1.5.7/events/sports_meet.pdf"
    },
    {
      "title": "Cultural Fest",
      "date": "2025-04-12",
      "fileUrl": "http://10.1.5.7/events/cultural_fest.pdf"
    },
    {
      "title": "Training Workshop",
      "date": "2025-04-25",
      "fileUrl": "http://10.1.5.7/events/workshop.pdf"
    },
     {
         "title": "B-Type Garages for Two Wheelers",
         "date": "2025-03-22",
         "fileUrl": "http://10.1.5.7/events/garages.pdf"
     },
    {
        "title": "Online Submission of Sizes for Liveries",
        "date": "2025-04-05",
        "fileUrl": "http://10.1.5.7/events/liveries.pdf"
    },
    {
        "title": "CSR Initiative Launch",
        "date": "2025-04-15",
        "fileUrl": "http://10.1.5.7/events/csr_launch.pdf"
    },
    {
        "title": "Annual Sports Meet",
        "date": "2025-03-30",
        "fileUrl": "http://10.1.5.7/events/sports_meet.pdf"
    },
    {
        "title": "Cultural Fest",
        "date": "2025-04-12",
        "fileUrl": "http://10.1.5.7/events/cultural_fest.pdf"
    },
    {
        "title": "Training Workshop",
        "date": "2025-04-25",
        "fileUrl": "http://10.1.5.7/events/workshop.pdf"
    }
  ];

  const itemsPerPageEvents = 5;
  let currentPageEvents = 1;

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
            <span style="font-weight: 500;">${item.title}</span><br>
            <small class="time-ago" style="color: gray;">${formatDate(item.date)}</small>
          </div>
          <span class="download-icon" title="Download" data-url="${item.fileUrl}" onclick="downloadItem(this)" style="cursor: pointer; font-size: 12px; margin-left: 10px;">
            <i class="fa fa-download" aria-hidden="true"></i>
          </span>
        </div>
      `;
      li.style.borderBottom = "1px solid #ccc";
      li.style.padding = "10px 0";
      list.appendChild(li);
    });

    renderpaginationReports();
  }

  function renderpaginationReports() {
    const totalPages = Math.ceil(events.length / itemsPerPageEvents);
    const container = document.getElementById("paginationReports");
    container.innerHTML = "";

    for (let i = 1; i <= totalPages; i++) {
        const btn = document.createElement("button");
        btn.textContent = i;
        btn.style.margin = "0 5px";
        btn.style.padding = "4px 8px";
        btn.style.backgroundColor = i === currentPage ? "#8B0000" : "#ddd";
        btn.style.color = i === currentPage ? "white" : "black";
        btn.style.border = "none";
        btn.style.borderRadius = "4px";
        btn.style.cursor = "pointer";
      btn.onclick = () => {
        currentPageEvents = i;
        displayEvents(i);
      };
      container.appendChild(btn);
    }
  }

  function downloadItem(el) {
    const url = el.getAttribute("data-url");
    window.open(url, "_blank");
  }

  function formatDate(dateString) {
    const date = new Date(dateString);
    const now = new Date();
    const diff = Math.floor((now - date) / (1000 * 60 * 60 * 24)); // days

    if (diff === 0) return "Today";
    if (diff === 1) return "Yesterday";
    if (diff < 7) return `${diff} days ago`;

    return date.toLocaleDateString();
  }

  // Initialize events display
  displayEvents(currentPageEvents);
    </script>
    
</body>
</html>

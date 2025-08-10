<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Refinary_New.aspx.cs" Inherits="NALCO_Intranet_Refinary_New" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NALCO Intranet</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" xintegrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            height: 200px;
            overflow-y: auto;
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

        .top-section, .middle-section, .bottom-section, .footer {
            display: flex;
            gap: 1rem;
            width: 100%;
        }

        .middle-section {
            margin-top: 10px;
            height: 80%;
        }

        .bottom-section {
            margin-top: 1rem;
        }

        .footer {
            margin-top: 10px;
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
            background-size: 100% !important;
            background-repeat: no-repeat !important;
            padding: 1.5rem !important;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            position: relative; /* For absolute positioning of button */
            height: 250px; /* Set a consistent height for all cards except Login */
            width: 18%;
        }


        .middle-section .card:nth-child(1), /* Notices */
        .middle-section .card:nth-child(2), /* Circulars */
        .middle-section .card:nth-child(3), /* Events */
        .middle-section .card:nth-child(4) /* Login Form */ {
            height: 250px;
        }


        .card.calendar {
            width: 25%; /* Default for desktop */
            height: 250px;
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
                font-size: 1rem;
                color: #8b0000;
                transition: color 0.3s ease;
            }

        /* Specific styles for Birthday and Superannuating cards */
        .birthday-card .scroll-list li .info .employee-name,
        .superannuation-card .scroll-list li .info .employee-name {
            font-size: 1rem;  /* Optional: makes names stand out more */
            display: block; /* Ensures name takes its own line */
        }

        .birthday-card .scroll-list li .info .designation,
        .superannuation-card .scroll-list li .info .designation {
            font-size: 0.9rem; /* Smaller for designations */
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
            0% {
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

        /* Calendar Specific Styles */
        .cardcalendar {
            background: white;
            padding: 1.5rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            height: 230px;
            margin: 0 auto;
        }

        .calendar-grid {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            text-align: center;
            gap: 4px; /* Increases space between rows and columns */
            padding: 3px; /* Adds internal padding to increase space inside the grid */
            width: 100%;
        }

        .calendar-header {
            color: maroon;
            font-weight: bolder;
            font-size: 22px;
            padding: 0.2rem;
            margin: -1.5rem -1.5rem 1rem; /* Negative margins to pull header into card's padding */
            text-align: center;
            display: flex;
            justify-content: space-between; /* Space out month/year and navigation buttons */
            align-items: center; /* Vertically align items */
        }

        /* Styles for individual calendar cells */
        .calendar-cell {
            display: inline-block;
            width: 13%; /* Adjusted for 7 columns with gap */
            padding: 8px;
            margin: 1px;
            text-align: center;
            border-radius: 6px;
            font-weight: bold;
            font-size: 0.92em;
        }

        /* Holiday styling based on type */
        .holiday-ph {
            background-color: #ffcccc; /* Light red for PH (Public Holiday) */
            width: auto;
            border-radius: 20px;
            font-weight: bold;
            border: 2px solid rgb(142 25 27 / 70%); /* Maroon-ish border */
        }
        .holiday-rh {
            background-color: #ccffcc; /* Light green for RH (Restricted Holiday) */
            width: auto;
            border-radius: 20px;
            font-weight: bold;
            border: 2px solid rgb(33 126 24 / 70%); /* Greenish border */
        }
        .holiday-wo {
            color: red; /* Red text for WO (Weekly Off, likely Sunday) */
            font-weight: bold;
        }

        /* Styling for empty cells (days before 1st of month) */
        .empty {
            visibility: hidden;
        }
        /* Styling for Sundays */
        .sunday {
            color: red;
            font-weight: bold;
        }
        /* Styling for today's date */
        .todaydate {
            color: red;
            font-weight: bold;
        }
        .current-day {
            background-color: #f8f920; /* Yellow background for current day */
            width: auto;
            border-radius: 20px;
            font-weight: bold;
            border: 2px solid rgb(100 97 16 / 70%); /* Yellowish-brown border */
        }

        /* Style for calendar navigation buttons */
        .calendar-header button {
            background: none;
            border: none;
            color: maroon;
            font-size: 1.5rem;
            cursor: pointer;
            padding: 0 5px;
        }
        .calendar-header button:hover {
            color: #a52a2a; /* Darker maroon on hover */
        }

        /* Responsive adjustments for smaller screens */
        @media (max-width: 480px) {
            .cardcalendar {
                width: 95%; /* Wider on very small screens */
                height: 200px; /* Slightly shorter */
                margin-top: 0; /* Remove negative margin for better alignment */
            }
            .calendar-header {
                font-size: 18px;
                margin: -1rem -1rem 0.5rem;
            }
            .calendar-cell {
                padding: 5px;
                font-size: 0.9em;
            }
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

        .cards-slider-container {
            height: 170px;
            overflow: visible;
            align-items: center;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: -1%;
        }

        .cards-slider-wrapper {
            width: 100%;
            overflow: visible;
        }

        .cards-slider {
            display: flex;
            width: 100%;
            justify-content: center;
            gap: 1rem;
            height: 150px;
        }

            .cards-slider .card {
                width: 269px;
                flex-shrink: 0;
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
                width: calc(233.33px * 6);
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
            .top-section, .middle-section, .bottom-section, .footer {
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

            .slider-container {
                width: 70%; /* Reduce width to fit alongside birthday card */
                height: 250px; /* Slightly smaller height */
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
        .emergency-contact {
            width: 57%; /* Adjusted to fit layout */
        }

            .emergency-contact img {
                width: 70%;
                height: 70%;
                object-fit: cover;
                border-radius: 8px;
            }

        .production-figures {
            width: 37%; /* Adjusted to fit layout */
            display: flex;
            flex-direction: column;
        }

            .production-figures .table-section {
                height: 100%; /* Upper half for the table */
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

            .production-figures .button-section {
                height: 25%; /* Lower half for the buttons */
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                padding: 0.5rem 0;
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


        /* Production Card Specific Styles */
        .production-card {
            background: white;
            padding: 1.5rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            position: relative;
            height: 250px;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
        }

            .production-card h3 {
                background: maroon;
                color: white;
                padding: 0.2rem;
                margin: -1.5rem -1.5rem 1rem;
                text-align: center;
            }

            .production-card .table-section {
                height: 70%;
                overflow: auto;
            }

            .production-card .production-table {
                width: 100%;
                border-collapse: collapse;
                background-color: #f9f9f9;
                font-family: Arial, sans-serif;
                margin: 0;
            }

                .production-card .production-table th {
                    background-color: #8B4513;
                    color: white;
                    padding: 0.75rem;
                    text-align: center;
                    border-bottom: 2px solid #ddd;
                }

                    .production-card .production-table th[colspan="5"] {
                        font-size: 1.1rem;
                        font-weight: bold;
                    }

                .production-card .production-table td {
                    padding: 0.5rem;
                    text-align: center;
                    border-bottom: 1px solid #ddd;
                }

                .production-card .production-table tr:nth-child(even) {
                    background-color: #f2f2f2;
                }

                .production-card .production-table tr:hover {
                    background-color: #e0e0e0;
                }

                .production-card .production-table td:last-child {
                    font-weight: bold;
                    color: #006400;
                }

            .production-card .button-section {
                height: 25%;
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                padding: 0.5rem 0;
            }

                .production-card .button-section button {
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
                }

        /* Media Queries for Responsiveness */
        @media (max-width: 1024px) {
            .production-card {
                width: 28% !important; /* Override inline 37% */
                min-width: 200px;
                height: 220px;
            }

                .production-card .production-table {
                    font-size: 0.95rem;
                }

                    .production-card .production-table th,
                    .production-card .production-table td {
                        padding: 0.6rem;
                    }

                .production-card .button-section button {
                    padding: 8px 12px;
                    font-size: 0.9rem;
                }
        }

        @media (max-width: 768px) {
            .production-card {
                width: 100% !important; /* Full width on mobile */
                max-width: 400px;
                margin: 0 auto;
                height: 250px;
            }

                .production-card .production-table {
                    font-size: 0.9rem;
                }

                    .production-card .production-table th,
                    .production-card .production-table td {
                        padding: 0.4rem;
                    }

                .production-card .button-section {
                    flex-wrap: wrap;
                    justify-content: center;
                }

                    .production-card .button-section button {
                        width: 45%;
                        margin: 5px;
                        padding: 8px 10px;
                        font-size: 0.85rem;
                    }
        }

        @media (max-width: 480px) {
            .production-card {
                width: 100% !important;
                height: 200px;
            }

                .production-card .production-table {
                    font-size: 0.8rem;
                }

                    .production-card .production-table th,
                    .production-card .production-table td {
                        padding: 0.3rem;
                    }

                .production-card .button-section button {
                    width: 48%;
                    padding: 6px 8px;
                    font-size: 0.8rem;
                }
        }

        @media only screen and (min-width: 768px) and (max-width: 1024px) {
            .production-card {
                width: 28% !important; /* Match other cards in tablet view */
                height: 220px;
            }

                .production-card .production-table {
                    font-size: 0.95rem;
                }

                    .production-card .production-table th,
                    .production-card .production-table td {
                        padding: 0.5rem;
                    }

                .production-card .button-section button {
                    padding: 8px 12px;
                    font-size: 0.9rem;
                }
        }

        .bottom-section .card .footer {
            width: 11% !important;
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

        table {
            font-size: 14px;
        }

        /* The standalone calendar provided already has these styles */
        /*
        .saturday {
            background-color: #e0f7fa;
            color: #00796b;
        }

        .sunday {
            background-color: #ffebee;
            color: #d32f2f;
        }
        */
    </style>

    <style>
        .list-container {
    height: calc(100% - 2.2rem - 40px); /* Adjust for h3 and pagination */
    overflow: hidden; /* Disable scrolling */
    position: relative;
}

.list-items {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
    display: flex;
    flex-direction: column;
}

.list-items li {
    padding: 0.2rem;
    border-bottom: 1px solid #e0e0e0;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    height: 100%;
    flex-shrink: 0;
    justify-content: space-between;
    font-size: 12px;
}

.list-items li .info {
    flex-grow: 1;
    text-align: left;
}

.list-items li .download-icon {
    cursor: pointer;
    font-size: 1rem;
    color: #8b0000;
    transition: color 0.3s ease;
}

.pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 10px;
    background-color: transparent; /* Blue background from image */
    padding: 5px;
    border-radius: 20px;
    width: fit-content;
    margin-left: auto;
    margin-right: auto;
}

.pagination button {
    background: none;
    border: none;
    color: white;
    font-size: 20px;
    cursor: pointer;
    padding: 0 8px;
}

.pagination button:disabled {
    color: #a0a0a0;
    cursor: not-allowed;
}

.pagination .dots {
    display: flex;
    gap: 6px;
}

.pagination .dot {
    width: 8px;
    height: 8px;
    background-color: black;
    border-radius: 50%;
    transition: background-color 0.3s;
}

.pagination .dot.active {
    background-color: maroon;
    width: 12px;
    height: 12px;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-family: Arial, sans-serif;
    height:fit-content;
  }

  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }

  tr:nth-child(even) {
    background-color: #f9f9f9;
  }

  tr:hover {
    background-color: #f1f1f1;
  }
    </style>

    <!-- Additional styles for the emergency contacts section -->
    <style>
        .red-text {
            color: #a72727; /* Updated to match new color scheme */
        }

        .red-border {
            border-color: #a72727; /* Updated to match new color scheme */
        }

        .td-pad {
            padding: 0.3rem 0.5rem; /* Updated to match new padding */
        }

        .text-xxs {
            font-size: 0.65rem; /* Smaller font size for table content */
            line-height: 1rem;
        }

        .red-bg-light {
            background-color: #a7272710; /* Lighter shade for background (approx 10% opacity) */
        }

        .red-bg-medium {
            background-color: #a7272730; /* Lighter shade for background (approx 30% opacity) */
        }

        .fas {
            margin-right: 0.25rem; /* Space between icon and text */
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
                        <li><a href="http://10.20.1.24/Covid/" target="_blank">Covid Vaccination Mgmt</a></li>
                        <li><a href="http://10.20.1.40/e-library/E-Library_IndexPage.htm" target="_blank">E library</a></li>
                        <li><a href="http://10.20.1.40/project/proj_index.htm" target="_blank">Safety Page</a></li>
                        <li><a href="http://10.20.1.24:8081/" target="_blank">Petrol Issue Application</a></li>

                        <li>
                            <a>Indian Standards</a>
                            <ul>
                                <li>
                                    <a href="http://10.20.1.40/bis_asp/start.shtml" target="_blank">pre Mar'09</a>
                                    <a href="https://standardsbis.bsbedge.com/" target="_blank">new, with reg</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a>Intercom Complaint Portal</a>
                            <ul>
                                <li>
                                    <a href="http://10.20.1.22:1111/intercomNew/" target="_blank">New</a>
                                    <a href="http://10.20.1.22:1111/intercom/" target="_blank">Old</a>
                                </li>
                            </ul>
                        </li>

                        <li><a href="http://10.20.1.24:8084/Default.aspx" target="_blank">Online Aqua Guard Compaints</a></li>
                        <li><a href="http://10.20.1.40/Applications/contractbiometric/mainpage.asp" target="_blank">Contractor & Apperentice Attendance</a></li>

                        <li><a href="http://10.20.1.40/budget/Budget_Main.htm" target="_blank">Capital/Revenue Budget Details</a></li>
                        <li><a href="https://mudira.nalcoindia.co.in/Account/loginsupplier.aspx" target="_blank">Contract Labour Management Systems (CLMS)</a></li>
                        <li><a href="http://10.20.1.24:994/" target="_blank">Bank Gurantee</a></li>
                        <li><a href="http://10.1.5.7/Applications/holidaylist/Default.aspx" target="_blank">Holiday list</a></li>

                        <li><a href="http://10.1.5.175/nalcoeas/" target="_blank">Executive Appraisal System</a></li>
                        <li><a href="http://10.20.1.40/PlantCivilComplaint/Default.aspx" target="_blank">Plant Civil Compaints</a></li>
                        <li><a href="https://nalcoindia.com/tenders/active-tenders/" target="_blank">Nalco Live Tenders</a></li>
                        <li><a href="http://10.20.1.24:9000/" target="_blank">Energy Meter Application</a></li>

                        <li><a href="http://10.60.235.33/Account/LoginCW.aspx" target="_blank">Systems Call View</a></li>
                        <li><a href="http://10.20.1.24:1112/" target="_blank">payroll utility</a></li>
                        <li><a href="http://10.60.255.33/nalcocmc/index.aspx" target="_blank">Compliance Management</a></li>
                        <li><a href="https://mudira.nalcoindia.co.in:2443/user/raisingcomplaint#!" target="_blank">ONLINE VIGILANCE COMPLAINT SYSTEM</a></li>

                        <li><a href="http://10.60.235.33/VendorBlackList/WebPages/BlacklistedVendorsList.aspx" target="_blank">BlackListed Vendors</a></li>
                        <li><a href="http://10.20.1.24:82/" target="_blank">Analytics</a></li>

                    </ul>


                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Policies</a>
                    <ul class="dropdown-menu">
                        <li>
                            <a>Vision, Mission, Values</a>
                            <ul>
                                <li>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Policies/Odia%201.jpg" target="_blank">Odia</a>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Policies/Hindi%201.jpg" target="_blank">Hindi</a>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Policies/English%201.jpg" target="_blank">English</a>
                                </li>
                            </ul>
                        </li>

                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Policies/Vision%20Mission-%20Alumina%20Refinery.jpg" target="_blank">Vision Mission - Alumina Refinery</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Policies/NALCO%20Energy%20Policy%20Poster.jpg" target="_blank">Energy Policy</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Policies/NALCO%20Env%20Policy%20Poster.jpg" target="_blank">Environment Policy</a></li>


                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Policies/NALCO%20Quality%20Policy%20Poster.jpg" target="_blank">Quality Policy</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Policies/NALCO%20OHS%20Policy%20Poster.jpg" target="_blank">OHAS Policy</a></li>



                        <li>
                            <a>SA Policy(EN|HI|ODIA)</a>
                            <ul>
                                <li>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Policies/SA%208000-2014%20Policy-Odia.pdf" target="_blank">Odia</a>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Policies/SA%208000-2014%20Policy-Hindi.pdf" target="_blank">Hindi</a>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Policies/SA%208000-2014%20Policy-English.pdf" target="_blank">English</a>
                                </li>
                            </ul>
                        </li>


                        <li>
                            <a>SA Policy(EN|ODIA)</a>
                            <ul>
                                <li>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Circulars/Whistle-Blower%20Policy-Odia.pdf" target="_blank">Odia</a>
                                    <a href="http://10.20.1.22/RefIntranet/Documents/Circulars/Whistleblowerpolicy_nalco.pdf" target="_blank">English</a>
                                </li>
                            </ul>
                        </li>



                        <li><a href="http://10.1.5.7/Policies/Accounts_Manual_1.pdf" target="_blank">Accounting Policy</a></li>
                        <li>
                            <a>IT Security Policy (English|Hindi)</a>
                            <ul>
                                <li>
                                    <a href="http://10.1.5.7/Departments/IT%20SECURITY%20POLICY.pdf" target="_blank">English</a>
                                    <a href="http://10.1.5.7/Departments/IT%20SECURITY%20POLICY[HI].pdf" target="_blank">Hindi</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="http://10.1.5.7/Policies/IT_Resource_Allocation_Policy.pdf" target="_blank">IT resource allocation Policy</a></li>
                        <li><a href="http://10.1.5.7/Policies/Security_Guidelines.pdf" target="_blank">IT Security Guidelines</a></li>

                        <li><a href="http://10.1.5.7/Departments/ITAUP_IT_Acceptable_Use_Policy_V1_0.pdf" target="_blank">IT Acceptable Use Policy</a></li>
                        <li><a href="http://10.1.5.7/Policies/CSG%20scan.pdf" target="_blank">Nalco Cyber Security Guidelines</a></li>
                        <li><a href="http://10.1.5.7/Policies/DND%20Scan.pdf" target="_blank">Dos and Don'ts for Computer Users </a></li>
                        <li><a href="http://10.1.5.7/Policies/circular_email_nomenclature_20130917.pdf" target="_blank">E-mail ID nomenclature policy</a></li>

                        <li><a href="http://10.1.5.7/Policies/Password%20Policy%20in%20Lotus%20Notes.pdf" target="_blank">Pasword Policy(Lotus)</a></li>





                    </ul>


                </li>





                <li class="dropdown"><a href="#" class="dropdown-toggle">Manuals</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/hrmanual.aspx" target="_blank">HR Manuals</a></li>
                        <li><a href="http://10.1.5.7/manuals/maintenance.pdf" target="_blank">Purchase Manuals</a></li>
                        <li><a href="https://nalcoindia.com/wp-content/uploads/2020/03/CONTRACT-MANUAL-2013-updated-till-31-10-2021.pdf" target="_blank">Contract Manuals</a></li>
                        <li><a href="http://10.1.5.7/Manuals/SA_Manual.pdf" target="_blank">SA Manuals</a></li>

                        <li><a href="http://10.1.5.7/Manuals/store_manual.pdf" target="_blank">Store Manuals</a></li>
                        <li><a href="http://10.1.5.7/Manuals/APPOINTMENT_OF_CONSULTANT.pdf" target="_blank">Consultant Guideline</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Manuals/EPAS%20Procedure%20Manual.pdf" target="_blank">Executive Appraisal Manual</a></li>
                        <li><a href="http://10.20.1.40/misc/1.13-pa_nonex.pdf" target="_blank">Non-Executive Appraisal Guidelines</a></li>



                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Circulars/IFC-Final.pdf" target="_blank">Internal Financial Control Framework</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Manuals/GTC_on_GeM_3.0_v1.14[1].pdf" target="_blank">General Terms & Conditions GEM</a></li>

                    </ul>



                </li>















                <li class="dropdown"><a href="#" class="dropdown-toggle">Department Docs</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.20.1.40/sysdpm/selectISO.htm" target="_blank">Systems Dept</a></li>
                        <li><a href="http://10.20.1.40/TQM/tqm_dept/home.html" target="_blank">TQM Dept</a></li>
                        <li><a href="http://10.20.1.40/safety/safety_deptt1.htm" target="_blank">Safety Dept</a></li>
                        <li><a href="http://10.20.1.40/tsnc/tsnc.htm" target="_blank">T&C Dept</a></li>


                        <li><a href="http://10.20.1.22:1111/TSDRAWING/" target="_blank">CRG Dept</a></li>
                        <li><a href="http://10.20.1.40/mech/mech_main.htm" target="_blank">Mechanical Dept</a></li>
                        <li><a href="http://10.20.1.40/finance/fin.htm" target="_blank">Finance Dept</a></li>


                        <li><a href="http://10.20.1.40/HRD/hr_dept2.htm" target="_blank">HRD</a></li>
                        <li><a href="http://10.20.1.40/horticulture/horti.htm" target="_blank">Horticulture Dept</a></li>
                        <li><a href="http://10.20.1.40/SPP/spp_main.htm" target="_blank">SPP Dept</a></li>
                        <li><a href="http://10.20.1.40/trngdept/index.asp" target="_blank">Training Dept</a></li>
                        <li><a href="http://10.20.1.22:1111/Deptt/Dashboard.aspx" target="_blank">Industrial Engineering</a></li>
                        <li><a href="http://10.20.1.40/misc/misc.htm" target="_blank">Miscellaneous Docs</a></li>



                    </ul>
                </li>















                <li class="dropdown"><a href="#" class="dropdown-toggle">Knowledge bank</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/MIS.aspx" target="_blank">MIS</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/TQM.aspx" target="_blank">TQM</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Operations.aspx" target="_blank">Operations</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Mech.aspx" target="_blank">Mechanical</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Electrical.aspx" target="_blank">Electrical</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/CnI.aspx" target="_blank">C&I</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/SPP.aspx" target="_blank">SPP</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Safety.aspx" target="_blank">E&S</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/TnC.aspx" target="_blank">T&C</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Materials.aspx" target="_blank">Materials</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/CRG.aspx" target="_blank">CRG</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/SYSTEMS.aspx" target="_blank">Systems</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Vigilance.aspx" target="_blank">Vigilance</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Fin.aspx" target="_blank">Finance</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/HRD.aspx" target="_blank">H&A</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/RnD.aspx" target="_blank">QC lab, R&D</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Civil.aspx" target="_blank">Civil</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/IE.aspx" target="_blank">IE</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Medical.aspx" target="_blank">Medical</a></li>
                        <li><a href="http://10.20.1.22:1111/KnowledgePortal/Common.aspx" target="_blank">HRD - Training Center</a></li>
                    </ul>
                </li>





                <li class="dropdown"><a href="#" class="dropdown-toggle">Business Excellence</a>
                    <ul class="dropdown-menu">
                        <li><a href="https://drive.google.com/file/d/1BJRkaS9-9BnUFC-GaV2a99Y0gCAxwmBi/view" target="_blank">BE Position Report-2023 of AR</a></li>
                        <li><a href="https://drive.google.com/file/d/1-Zt6NEV6tx4WCGs77tOlUC5huzCPrd-b/view" target="_blank">The EFQM Model</a></li>
                        <li><a href="https://drive.google.com/file/d/1BnaZ23Uz5Ma70LEkKMjR7Gjpo6pkaj2G/view" target="_blank">World class in India_ a casebook of companies in transformation</a></li>
                        <li><a href="https://drive.google.com/file/d/1BmDN5NB9eiwtPpBbaDEwvfpjlSznJy0O/view" target="_blank">Managing radical change_ what Indian companies must do to become World-class</a></li>
                    </ul>
                </li>



                <li class="dropdown"><a href="#" class="dropdown-toggle">SA8000</a>
                    <ul class="dropdown-menu">
                        <li>
                            <a>Policy (Odiya|Hindi|English)</a>
                            <ul>
                                <li>
                                    <a href="http://10.20.1.22:1111/DepartmentDocs/SA8000/SA8000-POLICY%20[Odiya].pdf" target="_blank">Odiya</a>
                                    <a href="http://10.20.1.22:1111/DepartmentDocs/SA8000/SA8000-POLICY%20[Hindi].pdf" target="_blank">Hindi</a>
                                    <a href="http://10.20.1.22:1111/DepartmentDocs/SA8000/SA8000-POLICY%20[English].pdf" target="_blank">English</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a>Standard (English|Hindi)</a>
                            <ul>
                                <li>
                                    <a href="http://10.1.5.7/Downloads/SA8000%20Standard%202014.pdf" target="_blank">English</a>
                                    <a href="http://10.1.5.7/Policies/SA8000-2014_Hindi.pdf" target="_blank">Hindi</a>
                                </li>
                            </ul>
                        </li>

                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000/Certificate%20IN048973%20-%20NATIONAL%20ALUMINIUM%20COMPANY%20LIMITED-%20REFINERY.pdf" target="_blank">SA8000 Certificate</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000/SA%208000_2014_Manual_Final_Alumina%20Refinery.pdf" target="_blank">Manual</a></li>
                        <li><a href="http://10.1.5.7/Downloads/SA8000%202014%20Auditor%20Guidance%20for%20Social%20Fingerprint.pdf" target="_blank">Guidance Document</a></li>
                        <li><a href="http://10.20.1.22:1111/Performance%20Indicator%20Annex_11_17_2014.pdf" target="_blank">Performance Indicator Annex</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000.aspx#container2" target="_blank">Emergency Management Plan</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000.aspx#container5" target="_blank">Committee's & MOM</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000.aspx#container6" target="_blank">Documents & Registers</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000.aspx#container1" target="_blank">Circulars</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000.aspx#container3" target="_blank">Audit</a></li>
                        <li><a href="http://10.20.1.22:1111/DepartmentDocs/SA8000.aspx#container4" target="_blank">Training</a></li>
                    </ul>
                </li>





                <li class="dropdown"><a href="#" class="dropdown-toggle">Useful Links</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.20.1.40/downloads/downloads.htm" target="_blank">Download Software</a></li>
                        <li><a href="https://www1.nseindia.com/companytracker/cmtracker.jsp?symbol=NATIONALUM" target="_blank">NALCO's Market Watch : NSE </a><a><a href="https://www.bseindia.com/stockinfo/index.htm?scrip_cd=532234" target="_blank">BSE </a></a></li>
                        <li><a href="https://www.bseindia.com/stockinfo/index.htm?scrip_cd=532234" target="_blank">LME Aluminium</a></li>
                        <li><a href="https://www.google.co.in/search?q=National+aluminium+company+NEWS&hl=en&prmd=n&source=lnms&tbs=nws:1&ei=uidFTJOUDJH80wTdj_SXDw&sa=X&oi=mode_link&ct=mode&ved=0CBcQ_AU&cad=h&gws_rd=ssl" target="_blank">NALCO News</a></li>
                        <li><a href="https://www.google.co.in/" target="_blank">GOOGLE</a></li>
                        <li><a href="https://www.irctc.co.in/nget/train-search" target="_blank">IRCTC Online Ticket</a></li>
                        <li><a href="https://www.indianrail.gov.in/enquiry/StaticPages/StaticEnquiry.jsp?StaticPage=index.html" target="_blank">Indian Rail</a></li>
                        <li><a href="https://www.onlinesbi.com/retail/login.htm" target="_blank">Online SBI</a></li>
                        <li><a href="https://www.timeanddate.com/date/duration.html" target="_blank">Find your AGE</a></li>
                        <li><a href="http://www.sciencemadesimple.net/currency.html" target="_blank">Currency Converter</a></li>
                        <li><a href="http://egazette.nic.in/" target="_blank">The Gazette of India</a></li>
                        <li><a href="https://dict.hinkhoj.com/" target="_blank">Hindi to English Dictionary</a></li>
                        <li><a href="http://cppinsight/Applications/Online%20Circulars/Uploads/UAN%20Activation%20Screen%20Shots.pdf" target="_blank">UAN Activation Procedure || EPFO website Link</a>  <a href="https://www.epfindia.gov.in/site_en/index.php" target="_blank">|| EPFO website Link</a>  </li>
                        <li><a href="https://www.incometax.gov.in/iec/foportal/" target="_blank">Income Tax e-Filing</a></li>
                        <li><a href="https://cra-nsdl.com/CRA/" target="_blank">Login to NPS</a></li>
                        <li><a href="https://myhpgas.in/myHPGas/PortalLogin.aspx?" target="_blank">My HP Gas</a></li>
                        <li><a href="https://www.makemytrip.com/flights/" target="_blank">Make My Trip</a></li>
                        <li><a href="https://timesofindia.indiatimes.com/defaultinterstitial.cms" target="_blank">The Times Of India</a></li>
                        <li><a href="https://academy.theknightsofsafety.com/collections?category=chemical-safety" target="_blank">Link for e-learning programme</a></li>
                        <li><a href="http://10.20.1.22:1111/VC.aspx" target="_blank">User's Guide for Video Conferencing(VC)- Google Meet, Team, Webex, Zoom</a></li>
                    </ul>
                </li>





                <li class="dropdown"><a href="#" class="dropdown-toggle">SAP</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.60.255.11:8080/RP/index.html?" target="_blank">SAP Password Reset</a></li>
                        <li><a href="http://10.1.5.7/Manuals/Set_SAPPassword.pdf" target="_blank">SAP Password Reset User Manual</a></li>
                        <li><a href="http://10.20.1.40/ERP/ERP%20helpdesk.xls" target="_blank">SAP Helpdesk</a></li>
                        <li><a href="http://10.20.1.40/ERP/ERP%20helpdesk.xls" target="_blank">SAP HelpDesk Procedure</a></li>
                        <li><a href="http://10.1.5.7/SAP/ERPatNALCO/erpHomePage.htm" target="_blank">ERP @ NALCO</a></li>
                        <li><a href="http://10.20.1.40/ERP/Material%20Master%20Dictionary-REFINERY.xls" target="_blank">SAP Mat Master Dict(REF)</a></li>
                        <li><a href="http://10.20.1.40/ERP/MaterialMasterDictionary.xls" target="_blank">SAP Mat Master (All Units)</a></li>
                        <li><a href="http://10.20.1.40/ERP/SAP%20Code_Domestic%20Customer.pdf" target="_blank">SAP Codes For Domestic Customers</a></li>
                        <li><a href="http://10.20.1.40/ERP/erpfinusermanuals.htm" target="_blank">SAP Finance User Manuals</a></li>
                        <li><a href="http://10.20.1.40/ERP/Work%20Instruction%20of%20%20MM%20Transactions%20for%20PR%20,RFQ%20and%20%20Purchase%20Order.pdf" target="_blank">SAP Work Instruction of PR|RFQ|PO</a></li>
                        <li><a href="http://10.20.1.40/ERP/SAPServContMod.htm" target="_blank">SAP MM- Service Module User Manual</a></li>
                        <li><a href="http://10.60.255.51/" target="_blank">Corporate ERP Portal</a></li>
                        <li><a href="http://10.20.1.22:1111/Documents/SAP/OprMan_HR.pdf" target="_blank">HR Operational Procedure Manual</a></li>
                        <li><a href="http://10.130.82.111/new2009/sap/fico/ifrs/" target="_blank">SAP-Finance IFRS Manuals</a></li>
                        <li><a href="http://10.20.1.22:1111/construction.html" target="_blank">SRM 7 Production Server</a></li>
                        <li><a href="http://10.20.1.22:1111/construction.html" target="_blank">SRM 7 Quality Server</a></li>
                        <li><a href="http://10.20.1.22:1111/construction.html" target="_blank">SRM 7 Development Server</a></li>
                    </ul>
                </li>



                <li class="dropdown"><a href="#" class="dropdown-toggle">Regular Links</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Circulars/PR_CheckList_16.08.2021.pdf" target="_blank">PR CheckList</a></li>
                        <li><a href="https://www.nalcoindia.com/learning-portal/index.html" target="_blank">NALCO Learning Portal</a></li>
                        <li><a href="http://10.20.1.24:2002/ViewFile.aspx" target="_blank">Finance Digital Library</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Circulars/Samanvay.pdf" target="_blank">Samanvay Knowledge Management Portal</a></li>
                        <li><a href="http://10.60.255.11:8080/RP/index.html?" target="_blank">SAP Password Reset</a></li>
                        <li><a href="http://10.20.1.40/hrd/forms/forms.htm" target="_blank">Application Forms</a></li>
                        <li><a href="http://10.1.5.7/Policies/DOP/DOP_2011_Latest.pdf" target="_blank">DOP</a></li>
                        <li><a href="http://10.1.5.7/Policies/The_Company_You_Keep.pdf" target="_blank">Company You Keep</a></li>
                        <li><a href="http://10.1.5.7/Policies/annualreport/home_page.htm" target="_blank">Annual Report</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Circulars/Circular%20on%20Revised%20Minimum%20Wages%20for%20Contract%20Labour.pdf" target="_blank">Minimum Wage Circular</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Circulars/Revised%20Minimum%20Workable%20Rate.pdf" target="_blank">Minimum Workable rate</a></li>
                        <li><a href="http://10.1.5.7/Downloads/Parichaya/Parichaya.pdf" target="_blank">Parichaya</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Regular%20Links/standardized%20certificate.pdf" target="_blank">Standardization Certificate</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Regular%20Links/TRChecklist_03.02.2020.pdf" target="_blank">TR Checklist 03.02.2020</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Regular%20Links/CWIP%20codes%20for%20RE%202024-25%20and%20BE%202025-26.xlsx" target="_blank">CWIP codes for RE 2024-25 and BE 2025-26</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/GST/Guidance%20note%20for%20importers%20&%20exporters.pdf" target="_blank">Guidance note for importers & exporters</a></li>
                        <li><a href="http://10.20.1.22/RefIntranet/Documents/Manuals/Webinar- Buyer-NALCO damanjodi.pptx" target="_blank">Webinar- GEM</a></li>
                    </ul>
                </li>





            </ul>
        </nav>

        <div class="logo" style="width: 270px; height: 40px; display: flex; align-items: center; justify-content: center; font-weight: bold; font-size: 25px; color: white; background: linear-gradient(to bottom, rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.3)), url('../NALCO_Intranet/Images/refiner.jpg') no-repeat center; background-size: cover; border-radius: 5px; margin-left: 15px; letter-spacing: 6px; text-transform: uppercase; font-family: 'Segoe UI', sans-serif; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);">
            R E F I N E R Y
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
      <h3>Notices</h3>
      <div class="scroll-container">
        <ul class="scroll-list" id="notices-list" style="height:20px;">
          <!-- Notices will be populated dynamically -->
        </ul>
        <div id="paginationNotice" style="margin-top: 60%; text-align: center;"></div>
       <%-- <button class="scroll-control-btn" onclick="toggleScroll(this, 'notices-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
      </div>
    </div>

    <div class="card">
        <h3>Circulars</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="circular-list"  style="height:20px;">
                <!-- Circulars will be populated dynamically -->
            </ul>
            <div id="paginationCircular" style="margin-top: 50%; text-align: center;"></div>
            <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'circular-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
        </div>
    </div>


            <div class="card production-figures" style="width: 37%; height: 250px; display: flex; flex-direction: column; justify-content: flex-start;">
                <style>
                    /* Scoped styles for the dashboard inside the production figures card */
      .dashboard-main-heading {
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
                    .dashboard-content-wrapper {
                        display: flex;
                        flex-wrap: wrap;
                        gap: 18px;
                        padding: 10px;
                        box-sizing: border-box;
                        justify-content: center;
                        align-items: flex-start;
                        height: 190px;
                        margin-top:10px;
                    
                        }
                    .dashboard-speedometer-section {
                        flex: 1 1 180px;
                        min-width: 180px;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        background-color: #fff;
                        border-radius: 8px;
                        padding: 0;
                        box-shadow: none;
                        height: 100%;
                        justify-content: center;
                    }
                    .dashboard-chart-grid {
                        display: grid;
                        grid-template-columns: repeat(3, 1fr);
                        gap: 12px;
                        width: 100%;
                    }
                    .dashboard-chart-item {
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        padding: 2px;
                        background-color: #f8f8f8;
                        border-radius: 8px;
                        width: 100%;
                        box-sizing: border-box;
                        position: relative;
                    }
                    .dashboard-chart-canvas-wrapper {
                        position: relative;
                        width: 70px;
                        height: 35px;
                        margin-bottom: 2px;
                        overflow: hidden;
                    }
                    .dashboard-chart-percentage {
                        position: absolute;
                        top: 60%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        font-size: 0.8rem;
                        font-weight: 700;
                        color: #333;
                        white-space: nowrap;
                        z-index: 10;
                    }
                    .dashboard-chart-labels {
                        text-align: center;
                        font-size: 0.75rem;
                        color: #555;
                    }
                    .dashboard-chart-labels .product-name {
                        font-weight: 600;
                        color: #a72727;
                    }
                    .dashboard-table-section {
                        flex: 1 1 180px;
                        min-width: 180px;
                        background-color: #fff;
                        border-radius: 8px;
                        overflow: hidden;
                        box-shadow: none;
                        padding: 0;
                        height: 100%;
                        display: flex;
                        flex-direction: column;
                        justify-content: center;
                    }
                    .dashboard-table-section table {
                        width: 100%;
                        border-collapse: collapse;
                        font-size: 0.8rem;
                        color: #333;
                    }
                    .dashboard-table-section th,
                    .dashboard-table-section td {
                        padding: 4px 2px;
                        text-align: center;
                        border: 1px solid #e0e0e0;
                        vertical-align: middle;
                    }
                    .dashboard-table-section thead th {
                        background-color: #a72727;
                        font-weight: 600;
                        color: #fff;
                        text-transform: uppercase;
                    }
                    .dashboard-table-section tbody td:first-child {
                        color: #a72727;
                        font-weight: bold;
                    }
                    .dashboard-table-section tbody tr {
                        background-color: #fff;
                    }
                    .dashboard-table-section tbody tr:hover {
                        background-color: #e6e6e6;
                    }
                    .dashboard-table-section tbody td:nth-child(2),
                    .dashboard-table-section tbody td:nth-child(3) {
                        background-color: #E0F2F7;
                        font-weight: bold;
                    }
                    .dashboard-chartjs-tooltip {
                        opacity: 0;
                        position: absolute;
                        background: #000;
                        color: #fff;
                        font-size: 12px;
                        font-weight: bold;
                        padding: 6px 12px;
                        border-radius: 8px;
                        pointer-events: none;
                        transition: opacity 0.2s;
                        transform: translate(-50%, -50%);
                        text-align: center;
                        z-index: 100;
                    }
                    .dashboard-chartjs-tooltip.active {
                        opacity: 1;
                    }
                </style>
                <div class="dashboard-main-heading" id="dynamic-heading">
                    PRODUCTION FIGURES (IN MT/MU) AS ON <span id="current-date"></span>
                </div>
                <div class="dashboard-content-wrapper">
                    <div class="dashboard-speedometer-section">
                        <div class="dashboard-chart-grid">
                            <div class="dashboard-chart-item">
                                <div class="dashboard-chart-canvas-wrapper">
                                    <canvas id="bauxiteExcavationChart" width="70" height="35"></canvas>
                                    <span class="dashboard-chart-percentage" id="bauxiteExcavationPercentage"></span>
                                </div>
                                <div class="dashboard-chart-labels">
                                    <p class="product-name">Bauxite Excavation</p>
                                </div>
                            </div>
                            <div class="dashboard-chart-item">
                                <div class="dashboard-chart-canvas-wrapper">
                                    <canvas id="bauxiteTransportationChart" width="70" height="35"></canvas>
                                    <span class="dashboard-chart-percentage" id="bauxiteTransportationPercentage"></span>
                                </div>
                                <div class="dashboard-chart-labels">
                                    <p class="product-name">Bauxite Transportation</p>
                                </div>
                            </div>
                            <div class="dashboard-chart-item">
                                <div class="dashboard-chart-canvas-wrapper">
                                    <canvas id="hydrateChart" width="70" height="35"></canvas>
                                    <span class="dashboard-chart-percentage" id="hydratePercentage"></span>
                                </div>
                                <div class="dashboard-chart-labels">
                                    <p class="product-name">Hydrate</p>
                                </div>
                            </div>
                            <div class="dashboard-chart-item">
                                <div class="dashboard-chart-canvas-wrapper">
                                    <canvas id="calcinedAluminaChart" width="70" height="35"></canvas>
                                    <span class="dashboard-chart-percentage" id="calcinedAluminaPercentage"></span>
                                </div>
                                <div class="dashboard-chart-labels">
                                    <p class="product-name">Calcined Alumina</p>
                                </div>
                            </div>
                            <div class="dashboard-chart-item">
                                <div class="dashboard-chart-canvas-wrapper">
                                    <canvas id="powerGenerationChart" width="70" height="35"></canvas>
                                    <span class="dashboard-chart-percentage" id="powerGenerationPercentage"></span>
                                </div>
                                <div class="dashboard-chart-labels">
                                    <p class="product-name">Power Generation</p>
                                </div>
                            </div>
                            <div class="dashboard-chart-item">
                                <div class="dashboard-chart-canvas-wrapper">
                                    <canvas id="sghChart" width="70" height="35"></canvas>
                                    <span class="dashboard-chart-percentage" id="sghPercentage"></span>
                                </div>
                                <div class="dashboard-chart-labels">
                                    <p class="product-name">SGH</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-table-section">
                        <table class="w-full">
                            <thead>
                                <tr>
                                    <th>PRODUCT</th>
                                    <th>DAY</th>
                                    <th>MONTH</th>
                                </tr>
                            </thead>
                            <tbody id="productionTableBody"></tbody>
                        </table>
                    </div>
                </div>
                <div id="dashboard-chartjs-tooltip" class="dashboard-chartjs-tooltip"></div>
                <script>
                    // Data from Prod_Json.txt, embedded directly
                    const prodJsonData = [
                        { "para_code": "BAUNT", "para_desc": "Bauxite Trans- North & Central", "day_val": 24013.0, "month_val": 245020.0, "year_val": 1220902.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "BAUST", "para_desc": "Bauxite Trans- South", "day_val": 0.0, "month_val": 41839.0, "year_val": 256115.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "BAUXT", "para_desc": "Bauxite Transportation", "day_val": 24013.0, "month_val": 286859.0, "year_val": 1477017.0, "month_tgt": 690000.0, "year_tgt": 7700000.0 },
                        { "para_code": "BOBEX", "para_desc": "OB Excavation", "day_val": 1000.0, "month_val": 35700.0, "year_val": 181930.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "BOBNX", "para_desc": "OB Excavation - North & Central", "day_val": 1000.0, "month_val": 29050.0, "year_val": 157930.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "BOBSX", "para_desc": "OB Excavation - South", "day_val": 0.0, "month_val": 6650.0, "year_val": 24000.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "BXTEX", "para_desc": "Bauxite Excavation", "day_val": 17890.0, "month_val": 223870.0, "year_val": 1277530.0, "month_tgt": 650000.0, "year_tgt": 7700000.0 },
                        { "para_code": "BXTNX", "para_desc": "Bauxite Exc- North & Central", "day_val": 17890.0, "month_val": 217220.0, "year_val": 1253530.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "BXTSX", "para_desc": "Bauxite Exc - South", "day_val": 4050.0, "month_val": 40100.0, "year_val": 258400.0, "month_tgt": 0.0, "year_tgt": 0.0 },
                        { "para_code": "CALAL", "para_desc": "Calcined Alumina", "day_val": 6753.0, "month_val": 80187.0, "year_val": 462187.0, "month_tgt": 175000.0, "year_tgt": 2250000.0 },
                        { "para_code": "HYDRA", "para_desc": "Hydrate", "day_val": 5999.0, "month_val": 76587.0, "year_val": 464087.0, "month_tgt": 175000.0, "year_tgt": 2200000.0 },
                        { "para_code": "POWER", "para_desc": "Power (Net)", "day_val": 19.202, "month_val": 223.051, "year_val": 1344.519, "month_tgt": 566.0, "year_tgt": 7053.0 },
                        { "para_code": "POWGR", "para_desc": "Gross Generation", "day_val": 21.564, "month_val": 251.356, "year_val": 1515.057, "month_tgt": 636.0, "year_tgt": 7925.0 },
                        { "para_code": "SPLHY", "para_desc": "Special Hydrate", "day_val": 1099.293, "month_val": 14681.35, "year_val": 110772.951, "month_tgt": 0.0, "year_tgt": 0.0 }
                    ];
                    function createSpeedometer(chartId, percentageId, fyValue, targetValue) {
                        const ctx = document.getElementById(chartId).getContext('2d');
                        let percentage = (targetValue === 0 || isNaN(targetValue)) ? 0 : (fyValue / targetValue) * 100;
                        if (percentage > 100) percentage = 100;
                        if (percentage < 0) percentage = 0;
                        const totalAngle = 180;
                        const lineAngle = 4;
                        let achievedAngle = (percentage / 100) * (totalAngle - lineAngle);
                        let remainingAngle = totalAngle - achievedAngle - lineAngle;
                        if (achievedAngle < 0) achievedAngle = 0;
                        if (remainingAngle < 0) remainingAngle = 0;
                        const dataValues = [achievedAngle, remainingAngle, lineAngle];
                        const segmentColors = [
                            '#4CAF50',
                            '#e0e0e0',
                            '#007bff'
                        ];
                        document.getElementById(percentageId).innerText = `${percentage.toFixed(1)}%`;
                        if (Chart.getChart(chartId)) {
                            Chart.getChart(chartId).destroy();
                        }
                        new Chart(ctx, {
                            type: 'doughnut',
                            data: {
                                labels: ['FY Value', 'Remaining', 'Target Line'],
                                datasets: [{
                                    data: dataValues,
                                    backgroundColor: segmentColors,
                                    borderColor: segmentColors,
                                    borderWidth: [0, 0, 1],
                                    hoverOffset: 0
                                }]
                            },
                            options: {
                                responsive: false,
                                maintainAspectRatio: false,
                                cutout: '80%',
                                circumference: totalAngle,
                                rotation: -90,
                                plugins: {
                                    legend: { display: false },
                                    tooltip: {
                                        enabled: false,
                                        external: function (context) {
                                            let tooltipEl = document.getElementById('dashboard-chartjs-tooltip');
                                            const tooltipModel = context.tooltip;
                                            if (tooltipModel.opacity === 0 || !tooltipModel.body || tooltipModel.dataPoints.length === 0) {
                                                tooltipEl.classList.remove('active');
                                                tooltipEl.style.opacity = 0;
                                                return;
                                            }
                                            const dataIndex = tooltipModel.dataPoints[0].dataIndex;
                                            let content = '';
                                            if (dataIndex === 0) {
                                                content = `FY: ${fyValue.toLocaleString()}`;
                                            } else if (dataIndex === 2) {
                                                content = `Target: ${targetValue.toLocaleString()}`;
                                            }
                                            if (!content) {
                                                tooltipEl.classList.remove('active');
                                                tooltipEl.style.opacity = 0;
                                                return;
                                            }
                                            tooltipEl.innerHTML = content;
                                            const chartCanvas = context.chart.canvas;
                                            const position = chartCanvas.getBoundingClientRect();
                                            const centerX = position.left + chartCanvas.offsetWidth / 2;
                                            const centerY = position.top + chartCanvas.offsetHeight / 2;
                                            tooltipEl.style.left = `${centerX}px`;
                                            tooltipEl.style.top = `${centerY}px`;
                                            tooltipEl.classList.add('active');
                                            tooltipEl.style.opacity = 1;
                                        }
                                    }
                                },
                            }
                        });
                    }
                    function renderDashboardComponents() {
                        const data = prodJsonData;
                        const speedometerProducts = [
                            { id: 'bauxiteExcavation', paraCode: 'BXTEX', targetKey: 'year_tgt', name: 'Bauxite Excavation' },
                            { id: 'bauxiteTransportation', paraCode: 'BAUXT', targetKey: 'year_tgt', name: 'Bauxite Transportation' },
                            { id: 'hydrate', paraCode: 'HYDRA', targetKey: 'year_tgt', name: 'Hydrate' },
                            { id: 'calcinedAlumina', paraCode: 'CALAL', targetKey: 'year_tgt', name: 'Calcined Alumina' },
                            { id: 'powerGeneration', paraCode: 'POWER', targetKey: 'year_tgt', name: 'Power Generation' },
                            { id: 'sgh', paraCode: 'SPLHY', targetKey: 'year_tgt', name: 'SGH' }
                        ];
                        speedometerProducts.forEach(product => {
                            const item = data.find(d => d.para_code === product.paraCode);
                            if (item) {
                                createSpeedometer(
                                    product.id + 'Chart',
                                    product.id + 'Percentage',
                                    item.year_val,
                                    item[product.targetKey]
                                );
                            }
                        });
                        const tableBody = document.getElementById('productionTableBody');
                        tableBody.innerHTML = '';
                        const tableProducts = [
                            { paraCode: 'BXTEX', desc: 'Bauxite Excavation' },
                            { paraCode: 'BAUXT', desc: 'Bauxite Transportation' },
                            { paraCode: 'HYDRA', desc: 'Hydrate' },
                            { paraCode: 'CALAL', desc: 'Calcined Alumina' },
                            { paraCode: 'POWER', desc: 'Power Generation' },
                            { paraCode: 'SPLHY', desc: 'SGH' }
                        ];
                        tableProducts.forEach(product => {
                            const item = data.find(d => d.para_code === product.paraCode);
                            if (item) {
                                const row = `
                                    <tr>
                                        <td>${product.desc}</td>
                                        <td>${item.day_val.toLocaleString()}</td>
                                        <td>${item.month_val.toLocaleString()}</td>
                                    </tr>
                                `;
                                tableBody.insertAdjacentHTML('beforeend', row);
                            }
                        });
                    }
                    document.addEventListener('DOMContentLoaded', function () {
                        const dateElement = document.getElementById('current-date');
                        const today = new Date();
                        const options = { day: '2-digit', month: '2-digit', year: 'numeric' };
                        dateElement.textContent = today.toLocaleDateString('en-GB', options).replace(/\//g, '-');
                        renderDashboardComponents();
                    });
                </script>
            </div>



            <div class="cardcalendar" style="width: 265px; overflow: hidden; margin: 0 auto;">
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
   <div class="card">
        <h3>Events</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="events-list"  style="height:20px;">
                <!-- Events will be populated dynamically -->
            </ul>
            <div id="paginationEvents" style="margin-top: 50%; text-align: center;"></div>
            <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'events-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
        </div>
    </div>
            <div class="card" style="width: 17.5%;">
                <h3>Doctor's Availability</h3>
                <div class="scroll-container">
                    <ul class="scroll-list" id="doctors-slider">
                        <!-- Notices will be populated dynamically -->
                    </ul>
                    <button class="scroll-control-btn" onclick="toggleScroll(this, 'doctors-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
                </div>
            </div>

            <!-- Replaced Emergency Contacts Card Start -->
            <div style="display: flex; justify-content: center; align-items: center; width: 690px; height: 265px; background: transparent; padding: 0;">
              <div style="background: #fff; border-radius: 20px; box-shadow: 0 4px 16px #0001; width: 100%; height: 100%; margin-top:50px; padding: 0 0 14px 0;">
                <div style="display: flex; align-items: center; justify-content: center; gap: 10px; border-bottom: 2px solid #a72727; padding: 12px 0 6px 0; margin: 0 10px;">
                 
                  <span style="font-size: 1.2rem; font-weight: bold; color: #a72727; letter-spacing: 1px; text-transform: uppercase;">Emergency Contacts</span>

                </div>
                <div style="padding: 0 10px;">
                  <table style="width: 100%; border-collapse: separate; border-spacing: 0; margin-top: 6px; border-radius: 12px; overflow: hidden; border: 1.5px solid #a72727;">
                    <thead>
                      <tr style="background: #fff;">
                        <th style="color: #a72727; font-size: 0.95rem; font-weight: 700; text-align: left; padding: 6px 4px; border-bottom: 1.5px solid #a72727; text-transform: uppercase;">
                          <i class="fas fa-building" style="color: #a72727;"></i> Area
                        </th>
                        <th style="color: #a72727; font-size: 0.95rem; font-weight: 700; text-align: left; padding: 6px 4px; border-bottom: 1.5px solid #a72727; text-transform: uppercase;">
                          <i class="fas fa-phone-alt" style="color: #a72727;"></i> Intercom
                        </th>
                        <th style="color: #a72727; font-size: 0.95rem; font-weight: 700; text-align: left; padding: 6px 4px; border-bottom: 1.5px solid #a72727; text-transform: uppercase;">
                          <i class="fas fa-mobile-alt" style="color: #a72727;"></i> Landline/Mobile
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-first-aid" style="color: #2196f3;"></i> FIRST AID CENTER
                        </td>
                        <td style="color: #222; padding: 5px 4px;">2222</td>
                        <td style="color: #222; padding: 5px 4px;">8895261008</td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-hospital" style="color: #43a047;"></i> NALCO HOSPITAL
                        </td>
                        <td style="color: #222; padding: 5px 4px;">3333</td>
                        <td style="color: #222; padding: 5px 4px;">(06853) 255333</td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-fire-extinguisher" style="color: #a72727;"></i> NALCO FIRE STATION
                        </td>
                        <td style="color: #222; padding: 5px 4px;">4444</td>
                        <td style="color: #222; padding: 5px 4px;">(06853) 254222 / 8895261014</td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-shield-alt" style="color: #fbc02d;"></i> SAFETY DEPARTMENT
                        </td>
                        <td style="color: #222; padding: 5px 4px;">6666</td>
                        <td style="color: #222; padding: 5px 4px;">(06853) 254277</td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-headset" style="color: #8e24aa;"></i> CENTRAL CONTROL ROOM (CCR)
                        </td>
                        <td style="color: #222; padding: 5px 4px;">6420/6421</td>
                        <td style="color: #222; padding: 5px 4px;">(06853) 254323 / 9827776420</td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-fingerprint" style="color: #00897b;"></i> CISF CONTROL ROOM (MAIN GATE)
                        </td>
                        <td style="color: #222; padding: 5px 4px;">4330</td>
                        <td style="color: #222; padding: 5px 4px;">(06853) 254243</td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold; color: #222; padding: 5px 4px;">
                          <i class="fas fa-user-shield" style="color: #3949ab;"></i> TOWNSHIP SECURITY
                        </td>
                        <td style="color: #222; padding: 5px 4px;">6336</td>
                        <td style="color: #222; padding: 5px 4px;">6372801547</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- Replaced Emergency Contacts Card End -->

            <div class="card superannuation-card" style="background: url('../NALCO_Intranet/Images/retirenew.jpg') no-repeat center; background-size: cover; width: 16%;">
                <h3>Superannuation</h3>
                <div class="scroll-container">
                    <ul class="scroll-list" id="superannuating-slider">
                        <!-- Superannuations will be populated dynamically -->
                    </ul>
                    <button class="scroll-control-btn" onclick="toggleScroll(this, 'superannuating-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
                </div>
            </div>
        </section>

    </div>

    <section class="footer">
        <div class="cards-slider-container">
            <div class="cards-slider-wrapper">
                       <div class="cards-slider">
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/Nalco-Bhavan.jpg') no-repeat center; background-size: cover;  height:100px; width:269px;cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Default.aspx';">
                    <h2>Corporate</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/smelter.jpg') no-repeat center; background-size: cover;height:100px; width:269px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Smelter.aspx';">
                    <h2>Smelter</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/CPP.jpg') no-repeat center; background-size: cover; height:100px; width:269px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/CPP.aspx';">
                    <h2>CPP</h2>
                </div>
                <%--<div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/refiner.jpg') no-repeat center; background-size: cover; height:100px; width:315px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Refinary_New.aspx';">
                    <h2>Refinery</h2>
                </div>--%>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/NalcoMines.jpg') no-repeat center; background-size: cover; height:100px; width:269px; cursor: pointer;" onclick="window.location.href='http://10.60.235.110/NALCO_Intranet/Mines.aspx';">
                    <h2>Mines</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/marketstock.jpg') no-repeat center; background-size: cover; height:100px; width:269px;">
                    <h2>Market Watch</h2>
                </div>
            </div>
            </div>
        </div>





    </section>
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

    <footer style="height: 20px;">
        <p>© 2025 NALCO. All Rights Reserved.</p>
    </footer>



  <script>
      const today = new Date();
      let currentDate = new Date();
      let allHolidays = [];
      const IMAGE_BASE_URL = "http://10.1.5.7/images/emp_pic/";

      function sendLoginRequest() {
          const payload = {
              "PERNR": "",
              "param1": "1200", // Changed to 1200 for Refinery Unit
              "param2": "",
              "param3": "",
              "Token": ""
          };

          const apiUrl = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";

          console.log('Sending API request:', {
              url: apiUrl,
              payload: JSON.stringify(payload, null, 2),
              headers: {
                  'Content-Type': 'application/json',
                  'Authorization': 'Bearer N@lco!@#$123'
              }
          });

          fetch(apiUrl, {
              method: 'POST',
              headers: {
                  'Content-Type': 'application/json',
                  'Authorization': 'Bearer N@lco!@#$123'
              },
              body: JSON.stringify(payload)
          })
              .then(response => {
                  console.log('API Response:', {
                      status: response.status,
                      statusText: response.statusText,
                      headers: Object.fromEntries(response.headers.entries())
                  });
                  if (!response.ok) {
                      return response.text().then(text => {
                          throw new Error(`HTTP error! Status: ${response.status} ${response.statusText} - Response: ${text}`);
                      });
                  }
                  return response.json();
              })
              .then(data => {
                  console.log('API Response Data:', JSON.stringify(data, null, 2));

                  // Handle birthdays
                  if (data && data.birthdays && Array.isArray(data.birthdays)) {
                      const processedBirthdays = data.birthdays.map(item => ({
                          name: item.emp_name || 'Unknown',
                          designation: item.emp_dept || 'N/A',
                          unit: item.emp_unit || 'N/A',
                          pernr: item.PERNR || '',
                          image: item.PERNR ? `${IMAGE_BASE_URL}${item.PERNR}.jpg` : `${IMAGE_BASE_URL}default.jpg`
                      }));
                      console.log('Birthdays Data:', JSON.stringify(processedBirthdays, null, 2));
                      displayBirthdays(processedBirthdays);
                  } else {
                      console.warn('No valid birthdays data:', data ? data.birthdays : 'No data');
                      document.getElementById('birthday-slider').innerHTML = '<li>No birthdays today</li>';
                  }

                  // Handle superannuation
                  if (data && data.supperannuation && Array.isArray(data.supperannuation)) {
                      const processedAnnuation = data.supperannuation.map(item => ({
                          name: item.emp_name || 'Unknown',
                          designation: item.emp_dept || 'N/A',
                          unit: item.emp_unit || 'N/A',
                          pernr: item.PERNR || '',
                          image: item.PERNR ? `${IMAGE_BASE_URL}${item.PERNR}.jpg` : `${IMAGE_BASE_URL}default.jpg`
                      }));
                      console.log('Superannuation Data:', JSON.stringify(processedAnnuation, null, 2));
                      displayAnnuation(processedAnnuation);
                  } else {
                      console.warn('No valid superannuation data:', data ? data.supperannuation : 'No data');
                      document.getElementById('superannuating-slider').innerHTML = '<li>No superannuations today</li>';
                  }

                  // Handle holidays
                  if (data && data.nalco_holidays && Array.isArray(data.nalco_holidays)) {
                      allHolidays = data.nalco_holidays.map(item => {
                          const [day, month, yearAndTime] = (item.holiday_date || '').split("-");
                          const year = yearAndTime ? yearAndTime.split(" ")[0] : new Date().getFullYear();
                          return {
                              date: new Date(parseInt(year, 10) || new Date().getFullYear(), parseInt(month, 10) - 1 || 0, parseInt(day, 10) || 1),
                              title: item.Title || 'Holiday',
                              type: item.type || 'PH'
                          };
                      });
                      console.log('Holidays Data:', JSON.stringify(allHolidays, null, 2));
                      renderCalendar(currentDate, allHolidays);
                  } else {
                      console.warn('No valid holidays data:', data ? data.nalco_holidays : 'No data');
                      renderCalendar(currentDate, []);
                      document.getElementById('calendar-grid').innerHTML += '<div>Failed to load holidays</div>';
                  }
              })
              .catch(error => {
                  console.error('Error during API call:', error.message);
                  console.error('Error Stack:', error.stack);
                  document.getElementById('birthday-slider').innerHTML = '<li>Failed to load birthdays</li>';
                  document.getElementById('superannuating-slider').innerHTML = '<li>Failed to load superannuating employees</li>';
                  renderCalendar(currentDate, []);
                  document.getElementById('calendar-grid').innerHTML += '<div>Failed to load holidays</div>';
              });
      }

      function renderCalendar(date, holidaysData) {
          const monthYear = document.getElementById("month-year");
          const calendarGrid = document.getElementById("calendar-grid");
          calendarGrid.innerHTML = `
        <span class="day-names" style="font-weight:bold;">Sun</span>
        <span class="day-names" style="font-weight:bold;">Mon</span>
        <span class="day-names" style="font-weight:bold;">Tue</span>
        <span class="day-names" style="font-weight:bold;">Wed</span>
        <span class="day-names" style="font-weight:bold;">Thu</span>
        <span class="day-names" style="font-weight:bold;">Fri</span>
        <span class="day-names" style="font-weight:bold;">Sat</span>
    `;

          const monthNames = [
              "January", "February", "March", "April", "May", "June",
              "July", "August", "September", "October", "November", "December"
          ];
          monthYear.textContent = `${monthNames[date.getMonth()]} ${date.getFullYear()}`;

          const firstDay = new Date(date.getFullYear(), date.getMonth(), 1).getDay();
          const daysInMonth = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();

          for (let i = 0; i < firstDay; i++) {
              calendarGrid.innerHTML += `<div class="empty"></div>`;
          }

          for (let day = 1; day <= daysInMonth; day++) {
              const currentCellDate = new Date(date.getFullYear(), date.getMonth(), day);
              let className = "calendar-cell";
              let title = "";

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

      function displayBirthdays(birthdays) {
          const list = document.getElementById('birthday-slider');
          list.innerHTML = '';

          if (birthdays.length === 0) {
              list.innerHTML = '<li>No birthdays today</li>';
              list.style.animation = 'none';
              return;
          }

          birthdays.forEach(item => {
              const li = document.createElement('li');
              li.innerHTML = `
            <img src="${item.image}" alt="${item.name}" />
            <div class="info">
                <span class="employee-name">${item.name}</span>
                <span class="designation">${item.designation}</span>
                <span class="unit">${item.unit}</span>
            </div>
        `;
              list.appendChild(li);
          });

          if (birthdays.length >= 3) {
              list.innerHTML += list.innerHTML;
              list.style.animation = `scrollUp ${birthdays.length * 6}s linear infinite`;
          } else {
              list.style.animation = 'none';
          }
      }

      function displayAnnuation(annuations) {
          const list = document.getElementById('superannuating-slider');
          list.innerHTML = '';

          if (annuations.length === 0) {
              list.innerHTML = '<li>No superannuations today</li>';
              list.style.animation = 'none';
              return;
          }

          annuations.forEach(item => {
              const li = document.createElement('li');
              li.innerHTML = `
            <img src="${item.image}" alt="${item.name}" />
            <div class="info">
                <span class="employee-name">${item.name}</span>
                <span class="designation">${item.designation}</span>
                <span class="unit">${item.unit}</span>
            </div>
        `;
              list.appendChild(li);
          });

          if (annuations.length >= 3) {
              list.innerHTML += list.innerHTML;
              list.style.animation = `scrollUp ${annuations.length * 6}s linear infinite`;
          } else {
              list.style.animation = 'none';
          }
      }

      document.addEventListener('DOMContentLoaded', () => {
          sendLoginRequest();

          document.getElementById("prev-month").addEventListener("click", () => {
              currentDate.setMonth(currentDate.getMonth() - 1);
              renderCalendar(currentDate, allHolidays);
          });

          document.getElementById("next-month").addEventListener("click", () => {
              currentDate.setMonth(currentDate.getMonth() + 1);
              renderCalendar(currentDate, allHolidays);
          });

          renderCalendar(currentDate, []); // Initial calendar render
      });
  </script>




    <script>
        document.querySelectorAll('.dropdown-toggle').forEach(toggle => {
            toggle.addEventListener('click', function (e) {
                e.preventDefault();
                const dropdown = this.parentElement;
                const isActive = dropdown.classList.contains('active');
                document.querySelectorAll('.dropdown').forEach(d => d.classList.remove('active'));
                if (!isActive) {
                    dropdown.classList.add('active');
                }
            });
        });

        document.addEventListener('click', function (e) {
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
                    addBotMessage("Critical error: Data couldn't load. Functionality may be severely limited.");
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
                        if (res) response += (response ? "\n\n" + res : res);
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
        const slider = document.querySelector('.cards-slider'); // Corrected selector
        const visibleCards = 3;

        function updateSliderPosition() {
            slider.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
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

        // Auto-slide with 1-second pause
        function autoSlide() {
            if (currentIndex < totalCards - visibleCards) {
                currentIndex++;
            } else {
                currentIndex = 0; // Loop back to start
            }
            updateSliderPosition();
        }

        // setInterval(autoSlide, 1500); // Move every 1.5s (1s pause + 0.5s transition) - DISABLED
    </script>

    <script>
        // Function to format date (YYYY-MM-DD to MMM DD,YYYY)
        function formatDate(dateStr) {
            const date = new Date(dateStr);
            const options = { year: 'numeric', month: 'short', day: '2-digit' };
            return date.toLocaleDateString('en-US', options);
        }



        // Fetch and populate data from three JSON files
        Promise.all([
            //fetch('notices.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch notices')),
            fetch('circulars.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch circulars')),
            fetch('events.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch events'))
        ])
            .then(([notices, circulars, events]) => {
                console.log('Data fetched successfully');
                //populatePaginatedList('notices-list', notices);
                // populatePaginatedList('circular-list', circulars);
                //populatePaginatedList('events-list', events);
            })
            .catch(error => {
                console.error('Error fetching data:', error);
                //document.getElementById('notices-list').innerHTML = '<li>Failed to load notices</li>';
                //document.getElementById('circular-list').innerHTML = '<li>Failed to load circulars</li>';
                //document.getElementById('events-list').innerHTML = '<li>Failed to load events</li>';
            });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var options = {
                chart: {
                    type: 'bar',
                    height: '100%',
                    width: '100%', // Ensure chart fits container width
                    toolbar: { show: false },
                    fontFamily: 'Arial, sans-serif'
                },
                series: [
                    {
                        name: 'Day',
                        type: 'bar',
                        data: [22480, 21346, 6402, 7188, 1507, 396],
                        yAxisIndex: 0
                    },
                    {
                        name: 'Month',
                        type: 'bar',
                        data: [283070, 281091, 88872, 95094, 20430, 696],
                        yAxisIndex: 0

                    },
                    {
                        name: 'FY',
                        type: 'line',
                        data: [5700000, 770000, 1500000, 2030000, 227, 15870],
                        yAxisIndex: 1

                    },
                    {
                        name: 'FY Target',
                        type: 'line',
                        data: [7700000, 7700000, 2200000, 2230000, 447, 18870],
                        yAxisIndex: 1
                    }
                ],
                xaxis: {
                    categories: [
                        'Bauxite Excavation',
                        'Bauxite Transportation',
                        'Hydrate',
                        'Calcined Alumina',
                        'Power Generation',
                        'SGH'
                    ],
                    labels: {
                        style: {
                            fontSize: '8px',
                            colors: '#000'
                        },
                        rotate: 0
                    },
                    axisBorder: { show: false },
                    axisTicks: { show: false }
                },
                yaxis: [
                    {
                        seriesName: ['Day', 'Month'],
                        labels: {
                            formatter: function (val) {
                                return Math.round(val).toLocaleString(); // Whole numbers
                            },
                            style: {
                                fontSize: '7px',
                                colors: '#333'
                            }
                        },
                        max: 350000 // Suitable for Day/Month
                    },
                    {
                        seriesName: ['FY', 'FY Target'],
                        opposite: false,
                        show: false,
                        labels: {
                            formatter: function (val) {
                                return Math.round(val).toLocaleString(); // Whole numbers
                            },
                            style: {
                                fontSize: '7px',
                                colors: '#333'
                            }
                        }
                    }
                ],
                plotOptions: {
                    bar: {
                        horizontal: false,
                        columnWidth: '50%',
                        dataLabels: {
                            position: 'top'
                        }
                    }
                },
                dataLabels: {
                    enabled: true,
                    formatter: function (val) {
                        return Math.round(val).toLocaleString(); // Whole numbers
                    },
                    style: {
                        fontSize: '10px',
                        colors: ['#fff', '#fff', '#fff', '#fff'] // White for bars, black for lines
                    },
                    offsetY: -10,
                    background: {
                        enabled: true,
                        foreColor: '#000',
                        padding: 4,
                        borderRadius: 2,
                        borderWidth: 1,
                        borderColor: '#000',
                        opacity: 0.5
                    },
                    enabledOnSeries: [0, 1] // Labels for all series
                },
                stroke: {
                    width: [0, 0, 2, 2],
                    curve: 'smooth'
                },
                colors: ['#4682b4', '#32cd32', '#ffa500', '#dc143c'],
                legend: {
                    position: 'top',
                    horizontalAlign: 'right',
                    fontSize: '8px',
                    floating: true,
                    width: '100%',
                    itemMargin: {
                        horizontal: 8,
                        vertical: -2
                    },
                    markers: {
                        width: 2,
                        height: 2,
                        radius: 2
                    },
                    width: '100%', // Spread legend to fit in one line
                    formatter: function (seriesName) {
                        return seriesName;
                    }
                },
                tooltip: {
                    y: {
                        formatter: function (val) {
                            return Math.round(val).toLocaleString() + ' MT/MU'; // Whole numbers
                        }
                    }
                },
                grid: {
                    borderColor: '#e0e0e0',
                    strokeDashArray: 4
                }
            };

            var chart = new ApexCharts(document.querySelector("#production-chart"), options);
            chart.render();
        });
    </script>

    <%--notice--%>
<script>
    // --- Constants for Notices Module ---
    const NOTICES_API_URL = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";
    const FILE_BASE_URL_NOTICES = "http://10.1.5.7/notices/"; // Base URL for notice file downloads
    const NOTICES_AUTHORIZATION_TOKEN = "N@lco!@#$123"; // Authorization token

    const ITEMS_PER_PAGE_NOTICES = 4; // Number of notice items to display per page (as per Circulars card pattern)
    let currentPageNotices = 1;      // Current page number for notices, initialized to 1
    let notices = [];                // Array to store fetched and mapped notice data

    // --- Function to Fetch Notices Data from API ---
    async function fetchNoticesFromAPI() {
        // Define the payload for the POST request for notices
        const payload = {
            "PERNR": "",
            "param1": "1200", // Specific parameter for fetching notices
            "param2": "",
            "param3": "",
            "Token": ""
        };

        console.log('Notices API Request Details:', {
            url: NOTICES_API_URL,
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${NOTICES_AUTHORIZATION_TOKEN}`
            },
            body: JSON.stringify(payload, null, 2) // Pretty print payload for console
        });

        const noticesListElement = document.getElementById('notices-list');
        if (!noticesListElement) {
            console.error('UL element with id "notices-list" not found!');
            return; // Exit if the target element isn't found
        }

        try {
            const response = await fetch(NOTICES_API_URL, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${NOTICES_AUTHORIZATION_TOKEN}`
                },
                body: JSON.stringify(payload)
            });

            console.log('Notices API Response Status:', {
                status: response.status,
                statusText: response.statusText,
                headers: Object.fromEntries(response.headers.entries())
            });

            if (!response.ok) {
                const errorText = await response.text();
                throw new Error(`HTTP error! Status: ${response.status} ${response.statusText} - Response: ${errorText}`);
            }

            const data = await response.json();
            console.log('Notices API Raw Response Data:', JSON.stringify(data, null, 2));

            // Attempt to find the notices array based on common response patterns
            // The prompt implies `data.notices` directly based on the example.
            const rawNotices = data?.notices || data?.data?.notices || data?.Data || [];

            if (Array.isArray(rawNotices) && rawNotices.length > 0) {
                // Map the raw notice data to the desired format: { title, date, fileUrl }
                notices = rawNotices.map(item => ({
                    title: item.Title || 'Untitled Notice', // Use 'Title' as per example
                    // Convert pub_date (DD-MM-YYYY) to YYYY-MM-DD using existing formatDateInput
                    date: typeof formatDateInput === 'function' ? formatDateInput(item.pub_date) : item.pub_date,
                    // Construct fileUrl, ensuring File_Name is URL-encoded
                    fileUrl: item.File_Name ? `${FILE_BASE_URL_NOTICES}${encodeURIComponent(item.File_Name)}` : '#'
                }));
                console.log('Mapped Notices Data:', JSON.stringify(notices, null, 2));
            } else {
                console.warn('No valid notice data found in response or empty array. Using fallback data.');
                // Fallback data as specified in the requirements
                notices = [
                    {
                        title: "Fallback Notice",
                        date: "2025-06-23", // Static fallback date as per example
                        fileUrl: "http://10.1.5.7/notices/fallback.pdf"
                    }
                ];
            }
            displayNotices(currentPageNotices); // Display the first page of notices

        } catch (error) {
            console.error('Notice fetch failed:', error.message);
            console.error('Error Stack:', error.stack);
            // Display an error message to the user
            noticesListElement.innerHTML = `<li>Failed to load notices: ${error.message}</li>`;
            // Clear pagination buttons on error
            const paginationNotices = document.getElementById('paginationNotices');
            if (paginationNotices) {
                paginationNotices.innerHTML = '';
            }
        }
    }

    // --- Function to Display Notices for the Current Page ---
    function displayNotices(page) {
        const start = (page - 1) * ITEMS_PER_PAGE_NOTICES;
        const end = start + ITEMS_PER_PAGE_NOTICES;
        const paginatedItems = notices.slice(start, end);

        const noticesList = document.getElementById('notices-list');
        if (!noticesList) {
            console.error('UL element with id "notices-list" not found!');
            return;
        }
        noticesList.innerHTML = ''; // Clear previous items

        if (paginatedItems.length === 0 && notices.length > 0 && page > 1) {
            // If current page is empty but there are notices, go back to previous page
            currentPageNotices = page - 1;
            displayNotices(currentPageNotices);
            return;
        } else if (paginatedItems.length === 0 && notices.length === 0) {
            noticesList.innerHTML = '<li>No notices available</li>';
            renderPaginationNotices(); // Render pagination even if no items, to show 0 pages
            return;
        }

        paginatedItems.forEach(item => {
            const li = document.createElement('li');
            // Structure and styling matching the Circulars card
            li.innerHTML = `
            <div class="info" style="display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <span style="font-weight: 500;">${item.title}</span><br>
                    <small class="time-ago" style="color: gray;">
                        ${typeof formatDate === 'function' ? formatDate(item.date) : item.date}
                    </small>
                </div>
                <span class="download-icon" title="Download" data-url="${item.fileUrl}" 
                      onclick="typeof downloadItem === 'function' ? downloadItem(this) : console.warn('downloadItem function not found');" 
                      style="cursor: pointer; font-size: 12px; margin-left: 10px;">
                    <i class="fa fa-download" aria-hidden="true"></i>
                </span>
            </div>
        `;
            li.style.borderBottom = '1px solid #ccc'; // Styling from Circulars card
            li.style.padding = '10px 0';               // Styling from Circulars card
            noticesList.appendChild(li);
        });

        renderPaginationNotices(); // Update pagination buttons
    }

    // --- Function to Render Notices Pagination Buttons ---
    function renderPaginationNotices() {
        const pageCount = Math.ceil(notices.length / ITEMS_PER_PAGE_NOTICES);
        const paginationContainer = document.getElementById('paginationNotices'); // Target container for pagination
        if (!paginationContainer) {
            console.error('Pagination DIV element with id "paginationNotices" not found!');
            return;
        }
        paginationContainer.innerHTML = ''; // Clear previous buttons

        // Only render pagination if there's more than one page
        if (pageCount <= 1 && notices.length > 0) { // If there are notices but only one page, no pagination needed
            return;
        }
        if (notices.length === 0) { // If no notices, no pagination
            return;
        }

        for (let i = 1; i <= pageCount; i++) {
            const btn = document.createElement('button');
            btn.textContent = i;
            btn.style.margin = '0 5px';
            btn.style.padding = '4px 8px';
            // Highlight active page with maroon background
            btn.style.backgroundColor = i === currentPageNotices ? '#8B0000' : '#ddd';
            btn.style.color = i === currentPageNotices ? 'white' : 'black';
            btn.style.border = 'none';
            btn.style.borderRadius = '4px';
            btn.style.cursor = 'pointer';
            btn.onclick = () => {
                currentPageNotices = i;
                displayNotices(currentPageNotices);
            };
            paginationContainer.appendChild(btn);
        }
    }

    // --- Execute on DOM Content Loaded ---
    // Ensures the HTML elements are available before the script tries to access them.
    // This will trigger the fetch and display process for Notices.
    document.addEventListener('DOMContentLoaded', fetchNoticesFromAPI);

</script>


<script>
    const itemsPerPageCircular = 3;
    let currentPageCircular = 1;
    let circulars = [];

    const FILE_BASE_URL_CIRCULARS = "http://10.1.5.7/circulars/";

    function sendCircularsRequest() {
        const payload = {
            "PERNR": "",
            "param1": "1200",
            "param2": "",
            "param3": "",
            "Token": ""
        };

        const apiUrl = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";

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
                    return response.text().then(text => {
                        throw new Error(`HTTP error! Status: ${response.status} ${response.statusText} - ${text}`);
                    });
                }
                return response.json();
            })
            .then(data => {
                console.log('Full Circulars API Response:', data);
                const circularData = data?.circulars || data?.data?.circulars || data?.Data || [];

                if (Array.isArray(circularData) && circularData.length > 0) {
                    circulars = circularData.map(item => ({
                        title: item.Title || 'Untitled Circular',
                        date: formatDateInput(item.pub_date || new Date().toISOString()),
                        fileUrl: item.File_Name ? `${FILE_BASE_URL_CIRCULARS}${encodeURIComponent(item.File_Name)}` : '#'
                    }));
                    displayCirculars(currentPageCircular);
                } else {
                    console.warn("No circulars data found. Using fallback.");
                    circulars = [
                        {
                            title: "Fallback Circular",
                            date: "2025-06-23",
                            fileUrl: "http://10.1.5.7/circulars/fallback.pdf"
                        }
                    ];
                    document.getElementById('circular-list').innerHTML = '<li>Using fallback circular data</li>';
                    displayCirculars(currentPageCircular);
                }
            })
            .catch(error => {
                console.error('Error fetching circulars:', error.message);
                document.getElementById('circular-list').innerHTML = `<li>Failed to load circulars: ${error.message}</li>`;
            });
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

        renderPaginationCirculars();
    }

    function renderPaginationCirculars() {
        const totalPages = Math.ceil(circulars.length / itemsPerPageCircular);
        const container = document.getElementById("paginationCircular");
        container.innerHTML = "";

        for (let i = 1; i <= totalPages; i++) {
            const btn = document.createElement("button");
            btn.textContent = i;
            btn.style.margin = "0 5px";
            btn.style.padding = "4px 8px";
            btn.style.backgroundColor = i === currentPageCircular ? "#8B0000" : "#ddd";
            btn.style.color = i === currentPageCircular ? "white" : "black";
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

    function formatDateInput(dateStr) {
        if (!dateStr) return new Date().toISOString().split('T')[0];
        const [day, month, yearAndTime] = dateStr.split("-");
        const [year] = yearAndTime ? yearAndTime.split(" ") : [new Date().getFullYear()];
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

    document.addEventListener('DOMContentLoaded', sendCircularsRequest);
</script>


<script>
    const itemsPerPageEvents = 4;
    let currentPageEvents = 1;
    let events = [];

    const FILE_BASE_URL_EVENTS = "http://10.1.5.7/events/";

    function sendEventsRequest() {
        const payload = {
            "PERNR": "", // Replace with actual value
            "param1": "1200",  // Change if the backend expects something else for events
            "param2": "",
            "param3": "",
            "Token": ""
        };

        const apiUrl = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";

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
                    return response.text().then(text => {
                        throw new Error(`HTTP error! Status: ${response.status} ${response.statusText} - ${text}`);
                    });
                }
                return response.json();
            })
            .then(data => {
                console.log('Full Event API Response:', data);
                const eventData = data?.events || data?.data?.events || data?.Data || [];

                if (Array.isArray(eventData) && eventData.length > 0) {
                    events = eventData.map(item => ({
                        title: item.Title || 'Untitled Event',
                        date: formatDateInput(item.pub_date || new Date().toISOString()),
                        fileUrl: item.File_Name ? `${FILE_BASE_URL_EVENTS}${encodeURIComponent(item.File_Name)}` : '#'
                    }));
                    displayEvents(currentPageEvents);
                } else {
                    console.warn("No events data found. Using fallback.");
                    events = [
                        {
                            title: "Fallback Event",
                            date: "2025-06-23",
                            fileUrl: "http://10.1.5.7/events/fallback.pdf"
                        }
                    ];
                    document.getElementById('events-list').innerHTML = '<li>Using fallback event data</li>';
                    displayEvents(currentPageEvents);
                }
            })
            .catch(error => {
                console.error('Error fetching events:', error.message);
                document.getElementById('events-list').innerHTML = `<li>Failed to load events: ${error.message}</li>`;
            });
    }
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
        //fetch('birthdays.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch birthdays')),
        // fetch('superannuations.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch superannuations')),
        fetch('doctors.json').then(res => res.ok ? res.json() : Promise.reject('Failed to fetch doctors'))
    ])
        .then(([doctors]) => {
            populateEmployeeList('doctors-slider', doctors, true); // Mark this as doctor list
        })
        .catch(error => {
            console.error('Error fetching employee data:', error);
            // document.getElementById('birthday-slider').innerHTML = '<li>Failed to load birthdays</li>';
            //document.getElementById('superannuating-slider').innerHTML = '<li>Failed to load superannuations</li>';
            document.getElementById('doctors-slider').innerHTML = '<li>Failed to load doctors</li>';
        });
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

        renderPaginationEvents();
    }

    function renderPaginationEvents() {
        const totalPages = Math.ceil(events.length / itemsPerPageEvents);
        const container = document.getElementById("paginationEvents");
        container.innerHTML = "";

        for (let i = 1; i <= totalPages; i++) {
            const btn = document.createElement("button");
            btn.textContent = i;
            btn.style.margin = "0 5px";
            btn.style.padding = "4px 8px";
            btn.style.backgroundColor = i === currentPageEvents ? "#8B0000" : "#ddd";
            btn.style.color = i === currentPageEvents ? "white" : "black";
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

    function formatDateInput(dateStr) {
        if (!dateStr) return new Date().toISOString().split('T')[0];
        const [day, month, yearAndTime] = dateStr.split("-");
        const [year] = yearAndTime ? yearAndTime.split(" ") : [new Date().getFullYear()];
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

    document.addEventListener('DOMContentLoaded', sendEventsRequest);
</script>

<%-- <script>
  const today = new Date();
  let currentDate = new Date();
  let allHolidays = [];
  let circulars = [];
  let currentPageCircular = 1;
  const itemsPerPageCircular = 4;

  const FILE_BASE_URL = "http://10.1.5.7/circulars/";
  const IMAGE_BASE_URL = "http://10.1.5.7/images/emp_pic/";

  document.addEventListener('DOMContentLoaded', () => {
    sendLoginRequest();

    document.getElementById("prev-month").addEventListener("click", () => {
      currentDate.setMonth(currentDate.getMonth() - 1);
      renderCalendar(currentDate, allHolidays);
    });

    document.getElementById("next-month").addEventListener("click", () => {
      currentDate.setMonth(currentDate.getMonth() + 1);
      renderCalendar(currentDate, allHolidays);
    });

    renderCalendar(currentDate, []);
  });

  function sendLoginRequest() {
      const apiUrl = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";
    const payload = {
      "PERNR": "",
      "param1": "1200",
      "param2": "",
      "param3": "",
      "Token": ""
    };

    fetch(apiUrl, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer N@lco!@#$123'
      },
      body: JSON.stringify(payload)
    })
    .then(response => {
      if (!response.ok) throw new Error(`HTTP error: ${response.status}`);
      return response.json();
    })
    .then(data => {
      // Circulars
      const circularData = data.circulars || [];
      if (Array.isArray(circularData)) {
        circulars = circularData.map(item => ({
          title: item.Title || 'Untitled Circular',
          date: formatDateInput(item.pub_date),
          fileUrl: FILE_BASE_URL + encodeURIComponent(item.File_Name || '')
        }));
        displayCirculars(currentPageCircular);
      }

      // Birthdays
      if (Array.isArray(data.birthdays)) {
        const bdays = data.birthdays.map(e => ({
          name: e.emp_name,
          designation: e.emp_dept,
          unit: e.emp_unit,
          image: IMAGE_BASE_URL + e.PERNR + ".jpg"
        }));
        displayBirthdays(bdays);
      } else {
        document.getElementById('birthday-slider').innerHTML = '<li>No birthdays today</li>';
      }

      // Superannuation
      if (Array.isArray(data.supperannuation)) {
        const annuations = data.supperannuation.map(e => ({
          name: e.emp_name,
          designation: e.emp_dept,
          unit: e.emp_unit,
          image: IMAGE_BASE_URL + e.PERNR + ".jpg"
        }));
        displayAnnuation(annuations);
      } else {
        document.getElementById('superannuating-slider').innerHTML = '<li>No superannuations today</li>';
      }

      // Holidays (Optional - if needed)
      if (Array.isArray(data.nalco_holidays)) {
        allHolidays = data.nalco_holidays.map(item => {
          const [d, m, y] = item.holiday_date.split("-") || [];
          return {
            date: new Date(+y.split(" ")[0], +m - 1, +d),
            title: item.Title,
            type: item.type
          };
        });
        renderCalendar(currentDate, allHolidays);
      }
    })
    .catch(err => {
      console.error("API Fetch Error:", err.message);
      document.getElementById("circular-list").innerHTML = `<li>Error loading circulars: ${err.message}</li>`;
      document.getElementById("birthday-slider").innerHTML = '<li>Failed to load birthdays</li>';
      document.getElementById("superannuating-slider").innerHTML = '<li>Failed to load superannuations</li>';
      renderCalendar(currentDate, []);
    });
  }

  function displayCirculars(page) {
    const start = (page - 1) * itemsPerPageCircular;
    const list = document.getElementById("circular-list");
    list.innerHTML = "";

    circulars.slice(start, start + itemsPerPageCircular).forEach(item => {
      const li = document.createElement("li");
      li.innerHTML = `
        <div style="display: flex; justify-content: space-between;">
          <div>
            <span>${item.title}</span><br>
            <small>${formatDate(item.date)}</small>
          </div>
          <span onclick="window.open('${item.fileUrl}', '_blank')" style="cursor:pointer;">
            <i class="fa fa-download"></i>
          </span>
        </div>`;
      list.appendChild(li);
    });

    renderPaginationCircular();
  }

  function renderPaginationCircular() {
    const container = document.getElementById("paginationCircular");
    container.innerHTML = "";
    const totalPages = Math.ceil(circulars.length / itemsPerPageCircular);

    for (let i = 1; i <= totalPages; i++) {
      const btn = document.createElement("button");
      btn.textContent = i;
      btn.style.margin = "0 5px";
      btn.onclick = () => {
        currentPageCircular = i;
        displayCirculars(i);
      };
      container.appendChild(btn);
    }
  }

  function displayBirthdays(data) {
    const ul = document.getElementById("birthday-slider");
    ul.innerHTML = "";
    data.forEach(item => {
      const li = document.createElement("li");
      li.innerHTML = `
        <img src="${item.image}" alt="${item.name}">
        <div><strong>${item.name}</strong><br>${item.designation} (${item.unit})</div>`;
      ul.appendChild(li);
    });
  }

  function displayAnnuation(data) {
    const ul = document.getElementById("superannuating-slider");
    ul.innerHTML = "";
    data.forEach(item => {
      const li = document.createElement("li");
      li.innerHTML = `
        <img src="${item.image}" alt="${item.name}">
        <div><strong>${item.name}</strong><br>${item.designation} (${item.unit})</div>`;
      ul.appendChild(li);
    });
  }

  function formatDateInput(str) {
    if (!str) return new Date().toISOString().split('T')[0];
    const [d, m, y] = str.split("-");
    return `${y.split(" ")[0]}-${m}-${d}`;
  }

  function formatDate(str) {
    const date = new Date(str);
    const now = new Date();
    const diff = Math.floor((now - date) / (1000 * 60 * 60 * 24));
    if (diff === 0) return "Today";
    if (diff === 1) return "Yesterday";
    if (diff < 7) return `${diff} days ago`;
    return date.toLocaleDateString();
  }

  function renderCalendar(date, holidays) {
    const grid = document.getElementById("calendar-grid");
    const label = document.getElementById("month-year");
    label.textContent = `${date.toLocaleString('default', { month: 'long' })} ${date.getFullYear()}`;
    grid.innerHTML = "";

    const firstDay = new Date(date.getFullYear(), date.getMonth(), 1).getDay();
    const totalDays = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();

    for (let i = 0; i < firstDay; i++) grid.innerHTML += `<div class="empty"></div>`;

    for (let day = 1; day <= totalDays; day++) {
      const thisDate = new Date(date.getFullYear(), date.getMonth(), day);
      let className = "calendar-cell";
      if (thisDate.toDateString() === today.toDateString()) className += " current-day";
      if (thisDate.getDay() === 0) className += " sunday";

      const hol = holidays.find(h =>
        h.date.getFullYear() === thisDate.getFullYear() &&
        h.date.getMonth() === thisDate.getMonth() &&
        h.date.getDate() === thisDate.getDate()
      );
      const title = hol ? `${hol.title} (${hol.type})` : "";
      if (hol) className += ` holiday-${hol.type.toLowerCase()}`;

      grid.innerHTML += `<div class="${className}" title="${title}">${day}</div>`;
    }
  }
</script>--%>




   

   

    <script src="ApexChart.js"></script>
    <!-- Add Chart.js CDN if not present -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Data from Prod_Json.txt, embedded directly
        const prodJsonData = [
            { "para_code": "BAUNT", "para_desc": "Bauxite Trans- North & Central", "day_val": 24013.0, "month_val": 245020.0, "year_val": 1220902.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "BAUST", "para_desc": "Bauxite Trans- South", "day_val": 0.0, "month_val": 41839.0, "year_val": 256115.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "BAUXT", "para_desc": "Bauxite Transportation", "day_val": 24013.0, "month_val": 286859.0, "year_val": 1477017.0, "month_tgt": 690000.0, "year_tgt": 7700000.0 },
            { "para_code": "BOBEX", "para_desc": "OB Excavation", "day_val": 1000.0, "month_val": 35700.0, "year_val": 181930.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "BOBNX", "para_desc": "OB Excavation - North & Central", "day_val": 1000.0, "month_val": 29050.0, "year_val": 157930.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "BOBSX", "para_desc": "OB Excavation - South", "day_val": 0.0, "month_val": 6650.0, "year_val": 24000.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "BXTEX", "para_desc": "Bauxite Excavation", "day_val": 17890.0, "month_val": 223870.0, "year_val": 1277530.0, "month_tgt": 650000.0, "year_tgt": 7700000.0 },
            { "para_code": "BXTNX", "para_desc": "Bauxite Exc- North & Central", "day_val": 17890.0, "month_val": 217220.0, "year_val": 1253530.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "BXTSX", "para_desc": "Bauxite Exc - South", "day_val": 4050.0, "month_val": 40100.0, "year_val": 258400.0, "month_tgt": 0.0, "year_tgt": 0.0 },
            { "para_code": "CALAL", "para_desc": "Calcined Alumina", "day_val": 6753.0, "month_val": 80187.0, "year_val": 462187.0, "month_tgt": 175000.0, "year_tgt": 2250000.0 },
            { "para_code": "HYDRA", "para_desc": "Hydrate", "day_val": 5999.0, "month_val": 76587.0, "year_val": 464087.0, "month_tgt": 175000.0, "year_tgt": 2200000.0 },
            { "para_code": "POWER", "para_desc": "Power (Net)", "day_val": 19.202, "month_val": 223.051, "year_val": 1344.519, "month_tgt": 566.0, "year_tgt": 7053.0 },
            { "para_code": "POWGR", "para_desc": "Gross Generation", "day_val": 21.564, "month_val": 251.356, "year_val": 1515.057, "month_tgt": 636.0, "year_tgt": 7925.0 },
            { "para_code": "SPLHY", "para_desc": "Special Hydrate", "day_val": 1099.293, "month_val": 14681.35, "year_val": 110772.951, "month_tgt": 0.0, "year_tgt": 0.0 }
        ];

        function createSpeedometer(chartId, percentageId, fyValue, targetValue) {
            const ctx = document.getElementById(chartId).getContext('2d');
            let percentage = (targetValue === 0 || isNaN(targetValue)) ? 0 : (fyValue / targetValue) * 100;
            if (percentage > 100) percentage = 100;
            if (percentage < 0) percentage = 0;
            const totalAngle = 180;
            const lineAngle = 4;
            let achievedAngle = (percentage / 100) * (totalAngle - lineAngle);
            let remainingAngle = totalAngle - achievedAngle - lineAngle;
            if (achievedAngle < 0) achievedAngle = 0;
            if (remainingAngle < 0) remainingAngle = 0;
            const dataValues = [achievedAngle, remainingAngle, lineAngle];
            const segmentColors = [
                '#4CAF50', // Green for achievement
                '#e0e0e0', // Light gray for remaining
                '#007bff' // Blue for the end mark line
            ];
            document.getElementById(percentageId).innerText = `${percentage.toFixed(1)}%`;
            if (Chart.getChart(chartId)) {
                Chart.getChart(chartId).destroy();
            }
            new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['FY Value', 'Remaining', 'Target Line'],
                    datasets: [{
                        data: dataValues,
                        backgroundColor: segmentColors,
                        borderColor: segmentColors,
                        borderWidth: [0, 0, 1],
                        hoverOffset: 0
                    }]
                },
                options: {
                    responsive: false,
                    maintainAspectRatio: false,
                    cutout: '80%',
                    circumference: totalAngle,
                    rotation: -90,
                    plugins: {
                        legend: { display: false },
                        tooltip: {
                            enabled: false,
                            external: function (context) {
                                let tooltipEl = document.getElementById('chartjs-tooltip');
                                const tooltipModel = context.tooltip;
                                if (tooltipModel.opacity === 0 || !tooltipModel.body || tooltipModel.dataPoints.length === 0) {
                                    tooltipEl.classList.remove('active');
                                    tooltipEl.style.opacity = 0;
                                    return;
                                }
                                const dataIndex = tooltipModel.dataPoints[0].dataIndex;
                                let content = '';
                                if (dataIndex === 0) {
                                    content = `FY: ${fyValue.toLocaleString()}`;
                                } else if (dataIndex === 2) {
                                    content = `Target: ${targetValue.toLocaleString()}`;
                                }
                                if (!content) {
                                    tooltipEl.classList.remove('active');
                                    tooltipEl.style.opacity = 0;
                                    return;
                                }
                                tooltipEl.innerHTML = content;
                                const chartCanvas = context.chart.canvas;
                                const position = chartCanvas.getBoundingClientRect();
                                const centerX = position.left + chartCanvas.offsetWidth / 2;
                                const centerY = position.top + chartCanvas.offsetHeight / 2;
                                tooltipEl.style.left = `${centerX}px`;
                                tooltipEl.style.top = `${centerY}px`;
                                tooltipEl.classList.add('active');
                                tooltipEl.style.opacity = 1;
                            }
                        }
                    },
                }
            });
        }

        function renderDashboardComponents() {
            const data = prodJsonData;
            const speedometerProducts = [
                { id: 'bauxiteExcavation', paraCode: 'BXTEX', targetKey: 'year_tgt', name: 'Bauxite Excavation' },
                { id: 'bauxiteTransportation', paraCode: 'BAUXT', targetKey: 'year_tgt', name: 'Bauxite Transportation' },
                { id: 'hydrate', paraCode: 'HYDRA', targetKey: 'year_tgt', name: 'Hydrate' },
                { id: 'calcinedAlumina', paraCode: 'CALAL', targetKey: 'year_tgt', name: 'Calcined Alumina' },
                { id: 'powerGeneration', paraCode: 'POWER', targetKey: 'year_tgt', name: 'Power Generation' },
                { id: 'sgh', paraCode: 'SPLHY', targetKey: 'year_tgt', name: 'SGH' }
            ];
            speedometerProducts.forEach(product => {
                const item = data.find(d => d.para_code === product.paraCode);
                if (item) {
                    createSpeedometer(
                        product.id + 'Chart',
                        product.id + 'Percentage',
                        item.year_val,
                        item[product.targetKey]
                    );
                }
            });
            const tableBody = document.getElementById('productionTableBody');
            tableBody.innerHTML = '';
            const tableProducts = [
                { paraCode: 'BXTEX', desc: 'Bauxite Excavation' },
                { paraCode: 'BAUXT', desc: 'Bauxite Transportation' },
                { paraCode: 'HYDRA', desc: 'Hydrate' },
                { paraCode: 'CALAL', desc: 'Calcined Alumina' },
                { paraCode: 'POWER', desc: 'Power Generation' },
                { paraCode: 'SPLHY', desc: 'SGH' }
            ];
            tableProducts.forEach(product => {
                const item = data.find(d => d.para_code === product.paraCode);
                if (item) {
                    const row = `
                    <tr>
                        <td>${product.desc}</td>
                        <td>${item.day_val.toLocaleString()}</td>
                        <td>${item.month_val.toLocaleString()}</td>
                    </tr>
                `;
                    tableBody.insertAdjacentHTML('beforeend', row);
                }
            });
        }
        document.addEventListener('DOMContentLoaded', function () {
            const dateElement = document.getElementById('current-date');
            const today = new Date();
            const options = { day: '2-digit', month: '2-digit', year: 'numeric' };
            dateElement.textContent = today.toLocaleDateString('en-GB', options).replace(/\//g, '-');
            renderDashboardComponents();
        });
    </script>
</body>
</html>

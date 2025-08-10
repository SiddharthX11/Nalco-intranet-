<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="NALCO_Intranet_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NALCO Intranet</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" xintegrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <style>
       :root {
            /* Colors from NALCO file for MIS reports modal*/
            --primary-red: #8B0000;
            --dark-red: #A52A2A;
            --subtle-accent: #80CBC4;
            --off-white-bg: #FDF5E6;
            --text-dark: #343a40;
            --text-medium: #6c757d;
            --card-background: #ffffff;
            --border-light: #e9ecef;
            --shadow-subtle: rgba(0, 0, 0, 0.08);
            --button-shadow: rgba(0, 0, 0, 0.15);
       }
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

        justify-content:flex-end; /* Centers the ul within nav */
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

        .slider-container {
            width: 80%;
            height: 300px;
            overflow: hidden;
            background-color: #e0e0e0;
            border: 1px solid #ccc;
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
            background-size: cover; /* Ensure image covers the card */
            background-repeat: no-repeat; /* No !important needed here unless specifically desired */
            padding: 1rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            position: relative; /* For absolute positioning of button */
            height: 250px; /* Set a consistent height for all cards except Login */
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
        }


        .card2 {
    background: white;
    background-size: 100% !important;
    background-repeat: no-repeat !important;
    padding: 1.5rem !important;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    border: 1px solid #ccc;
    position: relative;
    height: 283px;
    width: 38.2%;
    overflow: hidden;
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

            /* UPDATED: Styling for the h3 header within each module card */
            .card h3 {
                margin-top: 0;
                color: #8B0000; /* Changed to primary-red */
                font-size: 1.2em;
                font-weight: 700;
                margin-bottom: 10px;
                padding: 0 0 8px 0; /* Adjusted padding to match previous header's padding-bottom */
                border-bottom: 2px solid #A52A2A; /* Added border */
                text-align: center;
                text-transform: uppercase;
                background: none; /* Removed background */
            }

       /* Birthday and Superannuating Cards */
        .birthday-card {
            width: 15%; /* Original width */
            background-color: #fff9ee; /* Added background-color */
            opacity: 1; /* Added opacity */
            background-image: repeating-radial-gradient( circle at 0 0, transparent 0, #fff9ee 4px ), repeating-linear-gradient( #ccd0e855, #ccd0e8 ); /* Added background-image */
            background-size: cover;
            color: #333;
            position: relative;
            height: 250px;
            transition: width 0.3s ease;
        }

        .superannuation-card {
           
            background-color: #fff9ee; /* Added background-color */
            opacity: 1; /* Added opacity */
            background-image: repeating-radial-gradient( circle at 0 0, transparent 0, #fff9ee 4px ), repeating-linear-gradient( #ccd0e855, #ccd0e8 ); /* Added background-image */
            background-size: cover;
            color: #333;
            position: relative;
            height: 250px; /* Assuming same height as birthday card */
            transition: width 0.3s ease;
             width: 310px;
            margin-top: 10px;
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
            padding: 0; /* Remove default padding */
            margin: 0;
            animation: scrollUp linear infinite;
            width: 100%; /* Ensure it fills the width */
            background-size: cover !important;
            display: flex;
            flex-direction: column;
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
            padding: 0.2rem 0; /* Adjust vertical padding */
            border-bottom: 1px solid #e0e0e0;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            flex-shrink: 0;
            justify-content: space-between; /* Ensures content and icon are spaced apart */
            /* Hover effect for list items */
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.2s ease, color 0.2s ease;
        }

        .scroll-list li:hover {
            background-color: #f0f0f0; /* Light grey background on hover */
            transform: translateY(-2px); /* Slight lift effect */
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08); /* Subtle shadow on hover */
            color: #5a2d2d; /* Dark maroon text on hover for better visibility */
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

        /* Adjusted scrollUp animation for seamless loop */
        @keyframes scrollUp {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-50%); /* Changed to -50% for seamless infinite scroll */
            }
        }

        .scroll-container:hover .scroll-list {
            animation-play-state: paused !important;
        }

        .middle-section .card {
            /* Removed: width: 17.5%; */ /* This fixed width was causing issues */
            flex: 1; /* Allow cards to grow and shrink to fill space */
            min-width: 220px; /* Ensure a minimum width for readability */
        }


/* Calendar Container */
.card.calendar {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    padding: 15px;
    box-sizing: border-box;
    position: relative;
    display: flex;
    flex-direction: column;
    width: 25%; /* Default for desktop */
    min-height: 310px; /* Increased to ensure all dates are visible */
}
.middle-section2 {
        display: flex;
        gap: 1rem;
        width: 100%;
        margin-top: 10px; /* Same margin as between other sections */
    }
/* Calendar Header */
.calendar-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 8px;
    background: maroon;
    color: white;
    padding: 8px;
    border-radius: 4px;
    font-size: 18px;
    font-weight: bold;
    text-align: center;
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

.calendar-header button {
    background-color: #e9e9e9;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 4px 8px;
    cursor: pointer;
    font-size: 16px;
    color: #555;
    transition: background-color 0.3s;
}

.calendar-header button:hover {
    background-color: #dcdcdc;
}


.calendar-header #month-year {
    font-size: 18px;
    font-weight: bold;
    color: white;
}

/* Calendar Grid */
.calendar-grid {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    gap: 0.5px;
    text-align: center;
    flex-grow: 1;
    font-size: 10px;
    min-height: 150px; /* Ensure enough height for all rows */
}

/* Day Names */
.calendar-grid span.day-names {
    font-weight: bold;
    padding: 8px 0;
    color: #333;
}

.calendar-grid span.day-names:nth-child(1) { /* Sunday */
    color: firebrick;
}

.calendar-grid span.day-names:nth-child(7) { /* Saturday */
    color: forestgreen;
}

/* Days */
.calendar-grid span:not(.day-names) {
    padding: 6px; /* Increased padding for visibility */
    font-size: 12px;
    cursor: pointer;
    border-radius: 4px;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 30px; /* Ensure each cell has enough space */
    transition: background-color 0.2s;
}

.calendar-grid span:not(.day-names):hover {
    background-color: #f0f0f0;
}

/* Empty Days */
.calendar-grid span:empty {
    background: transparent;
    cursor: default;
    min-height: 30px; /* Match the height of other cells */
}

/* Sundays and Saturdays */
.calendar-grid span.sun {
    color: firebrick;
}

.calendar-grid span.sat {
    color: forestgreen;
}

/* Public Holidays (PH) */
.calendar-grid span.public-holiday {
    background-color: rgba(178, 34, 34, 0.7);
    color: #fff;
    font-weight: bold;
    border: 2px solid rgba(139, 0, 0, 0.7);
    border-radius: 50%;
}

/* Restricted Holidays (RH) */
.calendar-grid span.restricted-holiday {
    background-color: rgba(255, 215, 0, 0.7);
    color: #333;
    font-weight: bold;
    border: 2px solid rgba(184, 134, 11, 0.7);
    border-radius: 50%;
}

/* Current Day */
.calendar-grid span.current-day {
    background-color: rgba(0, 128, 0, 0.7);
    color: #fff;
    border: 2px solid rgba(34, 139, 34, 0.7);
    border-radius: 50%;
    font-weight: bold;
}

/* Birthdays */
.calendar-grid span.birthday {
    background-color: rgba(0, 191, 255, 0.7);
    color: #fff;
    font-weight: bold;
    border: 2px solid rgba(0, 105, 180, 0.7);
    border-radius: 50%;
}

/* Tooltip */
#custom-tooltip {
    position: absolute;
    background-color: rgba(0, 0, 0, 0.85);
    color: #fff;
    padding: 6px 10px;
    border-radius: 5px;
    font-size: 12px;
    white-space: nowrap;
    z-index: 1000;
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.2s ease-in-out, visibility 0.2s ease-in-out;
    pointer-events: none;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .card.calendar {
        width: 100%;
        max-width: 400px;
        margin: 0 auto;
        min-height: 280px; /* Adjusted for mobile */
    }

    .calendar-header {
        font-size: 16px;
        padding: 6px;
    }

    .calendar-header button {
        padding: 3px 6px;
        font-size: 14px;
    }

    .calendar-header #month-year {
        font-size: 16px;
    }

    .calendar-grid {
        gap: 3px;
        font-size: 12px;
        min-height: 180px;
    }

    .calendar-grid span.day-names {
        padding: 6px 0;
    }

    .calendar-grid span:not(.day-names) {
        padding: 6px;
        font-size: 12px;
        min-height: 25px;
    }

    .calendar-grid span:empty {
        min-height: 25px;
    }
}

@media (max-width: 480px) {
    .card.calendar {
        min-height: 250px;
        padding: 8px;
    }

    .calendar-header {
        font-size: 14px;
        padding: 5px;
    }

    .calendar-header button {
        padding: 2px 5px;
        font-size: 12px;
    }

    .calendar-header #month-year {
        font-size: 14px;
    }

    .calendar-grid {
        gap: 2px;
        font-size: 10px;
        min-height: 150px;
    }

    .calendar-grid span.day-names {
        padding: 4px 0;
    }

    .calendar-grid span:not(.day-names) {
        padding: 4px;
        font-size: 10px;
        min-height: 20px;
    }

    .calendar-grid span:empty {
        min-height: 20px;
    }
}

/* Empty Days */
.calendar-grid span:empty {
    background: transparent;
    cursor: default;
}

/* Sundays and Saturdays */
.calendar-grid span.sun {
    color: firebrick;
}

.calendar-grid span.sat {
    color: forestgreen;
}

/* Public Holidays (PH) */
.calendar-grid span.public-holiday {
    background-color: rgba(178, 34, 34, 0.7);
    color: #fff;
    font-weight: bold;
    border: 2px solid rgba(139, 0, 0, 0.7);
    border-radius: 50%;
}

/* Restricted Holidays (RH) */
.calendar-grid span.restricted-holiday {
    background-color: rgba(255, 215, 0, 0.7);
    color: #333;
    font-weight: bold;
    border: 2px solid rgba(184, 134, 11, 0.7);
    border-radius: 50%;
}

/* Current Day */
.calendar-grid span.current-day {
    background-color: rgba(0, 128, 0, 0.7);
    color: #fff;
    border: 2px solid rgba(34, 139, 34, 0.7);
    border-radius: 50%;
    font-weight: bold;
}

/* Birthdays */
.calendar-grid span.birthday {
    background-color: rgba(0, 191, 255, 0.7);
    color: #fff;
    font-weight: bold;
    border: 2px solid rgba(0, 105, 180, 0.7);
    border-radius: 50%;
}

/* Tooltip */
#custom-tooltip {
    position: absolute;
    background-color: rgba(0, 0, 0, 0.85);
    color: #fff;
    padding: 6px 10px;
    border-radius: 5px;
    font-size: 12px;
    white-space: nowrap;
    z-index: 1000;
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.2s ease-in-out, visibility 0.2s ease-in-out;
    pointer-events: none;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .card.calendar {
        padding: 10px;
    }

    .calendar-header {
        font-size: 16px;
        padding: 6px;
    }

    .calendar-header button {
        padding: 3px 6px;
        font-size: 14px;
    }

    .calendar-header #month-year {
        font-size: 16px;
    }

    .calendar-grid {
        gap: 3px;
        font-size: 12px;
    }

    .calendar-grid span.day-names {
        padding: 4px 0;
    }

    .calendar-grid span:not(.day-names) {
        font-size: 12px;
    }
}

@media (max-width: 480px) {
    .card.calendar {
        height: 200px;
        padding: 8px;
    }

    .calendar-header {
        font-size: 14px;
        padding: 5px;
    }

    .calendar-header button {
        padding: 2px 5px;
        font-size: 12px;
    }

    .calendar-header #month-year {
        font-size: 14px;
    }

    .calendar-grid {
        gap: 2px;
        font-size: 10px;
    }

    .calendar-grid span.day-names {
        padding: 3px 0;
    }

    .calendar-grid span:not(.day-names) {
        font-size: 10px;
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

        .sap-card-header {
            background: #fff;
            padding: 8px 12px;
            border-radius: 6px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            font-size: 14px;
        }

        .sap-card-header h3 {
            font-size: 16px;
            color: maroon;
            margin-bottom: 4px;
        }

        .scroll-container {
           /* max-height: 40px;*/
            overflow: hidden;
        }

        .scroll-list {
            padding: 0;
            list-style: none;
        }

        .cards-slider-container {
            width: 85%;
            height: 200px;
            overflow: hidden;
            background-color: #e0e0e0;
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
            padding: 1rem; /* Adjusted padding for better visibility */
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
        width: 23%;
        height: 220px;
    }
   
    .superannuation-card {
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
    .cpp-logo {
        width: 37%; /* Match original width */
        background: white;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
        height: 250px; /* Consistent with other cards */
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .cpp-logo-image {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
    }

    .cpp-logo-image img {
        width: 100%;
        height: 100%;
        object-fit: cover; /* Cover the entire space */
        border-radius: 8px;
    }

    .tables-card {
        width: 37%; /* Match original width */
        background: white;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
        height: 250px; /* Consistent with other cards */
        display: flex;
        flex-direction: column;
    }

    .tables-content {
        height: 50%; /* Top 50% of tables-card height */
        display: flex;
        flex-direction: row; /* Horizontal layout for inner cards */
        gap: 0.5rem;
        padding: 0.5rem;
        background: #f9f9f9;
    }

    .mis-report-card {
        width: 96%; /* Full width of container */
        height: 50%; /* Bottom 50% of tables-card height */
        background: white;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        border-radius: 6px;
        margin-top: 1.5rem;
        display: flex;
        flex-direction: column;
        margin-left: 1rem;  
        }

    .mis-report-card h3 {
        background: maroon;
        color: white;
        padding: 0.3rem;
        margin: -0.5rem -0.5rem 0.5rem;
        text-align: center;
        font-size: 0.9rem; /* Readable heading */
    }

    .mis-report-content {
        flex-grow: 1;
        padding: 0.5rem;
        font-size: 0.8rem;
        text-align: center;
        display: flex;
        align-items: center;
        justify-content: center;
    }



    .daily-mis-card, .prod-figures-card {
        flex: 1; /* Equal width */
        background: white;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        border-radius: 6px;
        padding: 0.5rem;
        display: flex;
        flex-direction: column;
        height: 100%;
    }

    .daily-mis-card h3, .prod-figures-card h3 {
        background: maroon;
        color: white;
        padding: 0.3rem;
        margin: -0.5rem -0.5rem 0.5rem;
        text-align: center;
        font-size: 0.9rem; /* Readable heading */
    }

    .daily-mis-list, .prod-figures-list {
        list-style: none;
        padding: 0;
        margin: 0;
        overflow-y: auto; /* Handle overflow */
        flex-grow: 1;
        font-size: 0.8rem; /* Adjusted for readability */
    }

    .daily-mis-list li, .prod-figures-list li {
        padding: 0.3rem 0;
        border-bottom: 1px solid #e0e0e0;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .daily-mis-list li .info, .prod-figures-list li .info {
        flex-grow: 1;
        display: flex;
        flex-direction: column;
    }

    .daily-mis-list li .info span, .prod-figures-list li .info span {
        font-size: 0.8rem;
    }

    /* Responsive Adjustments */
    @media (max-width: 768px) {
        .tables-card {
            width: 100%;
            height: 400px; /* Taller for stacked cards */
        }

        .tables-content {
            height: 200px;
            flex-direction: column; /* Stack vertically */
            gap: 0.75rem;
            padding: 0.75rem;
        }

        .mis-report-card {
            height: 200px; /* Adjusted for mobile */
        }

        .daily-mis-card, .prod-figures-card {
            height: 80px; /* Reduced height for stacking */
        }

        .mis-report-card h3, .daily-mis-card h3, .prod-figures-card h3 {
            font-size: 1rem;
        }

        .mis-report-content, .daily-mis-list li .info span, .prod-figures-list li .info span {
            font-size: 0.85rem;
        }
    }

    @media (max-width: 480px) {
        .tables-card {
            height: 350px;
        }

        .tables-content {
            height: 175px;
        }

        .mis-report-card {
            height: 175px;
        }

        .daily-mis-card, .prod-figures-card {
            height: 70px;
        }

        .mis-report-card h3, .daily-mis-card h3, .prod-figures-card h3 {
            font-size: 0.9rem;
        }

        .mis-report-content, .daily-mis-list li .info span, .prod-figures-list li .info span {
            font-size: 0.8rem;
        }
    }
</style>


    <style>
        /* Middle Sections Container */
.middle-sections-container {
    display: flex;
    flex-direction: column;
    gap: 1rem; /* Same gap as between Notices, Events, and DPR */
    width: 100%;
}

/* Middle Section 1 (Notices, Circulars, Events, DPR, Calendar) */
.middle-section {
    display: flex;
    gap: 1rem;
    width: 100%;
}

/* Middle Section 2 (MIS Reports, Production Figure, MPR, Superannuations) */
.middle-section2 {
    display: flex;
    gap: 1rem;
    width: 100%;
    margin-top: 0; /* Remove any extra margin */
}

/* Adjust card widths to match the layout */
.middle-section2 .production-figures {
    width: 35%;
    height: 140px;
}

.middle-section2 .mini-card2 {
    width: 60%;
    max-width: 480px;
    margin: 0 auto;
    padding: 12px;
    height: 130px;
}

.middle-section2 .card2 {
    height: 110px;
    width: 320px;
}

/* Ensure the superannuation card matches the birthday card width */
.middle-section2 .superannuation-card {
    width: 15%;
    min-width: 200px;
}
      .centralised-apps-card {
    width: 37%; /* Match notices-card width */
    background: white;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: visible;
    height: auto; /* Consistent with notices-card */
    display: flex;
    flex-direction: column;
}

.centralised-apps-card h3 {
    background: maroon;
    color: white;
    padding: 0.3rem;
    margin: 0;
    text-align: center;
    font-size: 0.9rem;
}

.centralised-apps-scroll-container {
    flex-grow: 1;
    position: relative;
    padding-bottom: 2rem;
    overflow-y: auto;
}

.centralised-apps-list {
    list-style: none;
    padding: 0.5rem;
    margin: 0;
    overflow-y: auto;
    font-size: 0.8rem;
    height: 100%;
}

.centralised-apps-list li {
    padding: 0.5rem 0;
    border-bottom: 1px solid #e0e0e0;
    display: flex;
    align-items: center;
}

.centralised-apps-list li .info {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
}

.centralised-apps-list li .info span {
    font-size: 0.8rem;
}

.scroll-control-buttons {
    position: absolute;
    bottom: 0.5rem;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 0.5rem;
}

.scroll-control-btn {
    padding: 0.3rem 0.6rem;
    background-color: maroon;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 0.7rem;
    opacity: 0.8;
    transition: opacity 0.3s;
}

.scroll-control-btn:hover {
    opacity: 1;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .centralised-apps-card {
        width: 100%;
        height: 300px;
    }

    .centralised-apps-card h3 {
        font-size: 1rem;
    }

    .centralised-apps-list li .info span {
        font-size: 0.85rem;
    }

    .scroll-control-btn {
        font-size: 0.75rem;
    }
}

@media (max-width: 480px) {
    .centralised-apps-card {
        height: 250px;
    }

    .centralised-apps-card h3 {
        font-size: 0.9rem;
    }

    .centralised-apps-list li .info span {
        font-size: 0.8rem;
    }

    .scroll-control-btn {
        font-size: 0.7rem;
        padding: 0.2rem 0.5rem;
    }
}
 .report-section {
            display: flex;
            justify-content: center;
            padding: 2rem; /* Light background for the page */
            font-family: Arial, sans-serif;
        }

        /* Retaining original MIS Report card layout */
         .production-figures {
                display: flex;
                gap: 10px;
                flex-wrap: wrap;
                width: 380px;
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
    flex: 1 1 20%;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    text-align: center;
    transition: transform 0.3s ease;
    height:120px;
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
    justify-content: space-around;
    gap: 10px;
    flex-wrap: wrap;
    margin-top: 10px;
}

        .report-list {
            list-style: none;
            padding: 0;
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            display:flex;
            font-size: small;
            justify-content: space-between; /* Added to distribute items evenly */
        }

        .report-list li {
            padding: 12px 16px;
            transition: background-color 0.3s ease;
            flex: 1;
        }

        .report-list li:last-child {
            border-bottom: none;
        }

        .report-list a {
            text-decoration: none;
            color: #333;
            display: block;
            font-weight: 500;
        }

        .report-list li:hover {
            background-color: #f0f0f0;
        }

        .report-list a:hover {
            color: #007bff;
        }


        .report-list a:hover {
            color: #e74c3c; /* Red on hover */
            text-decoration: underline;
        }

        /* Styles for the new Modal from nalco.txt */
        .modal-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4);
            z-index: 2000;
            align-items: center;
            justify-content: center;
        }
          .mis-reports-container {
            display: flex;
            gap: 15px; /* Space between buttons */
            margin-bottom: 20px;
            overflow-x: hidden; /* Hide horizontal scrollbar */
            padding-bottom: 10px; /* Extra space for scrollbar (if any) */
        }
        .modal-content {
            background-color: var(--card-background);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 600px;
            position: relative;
            transform: translateY(-20px);
            opacity: 0;
            transition: transform 0.3s ease-out, opacity 0.3s ease-out;
            max-height: 80vh;
            overflow-y: auto;
            z-index: 2001;
        }

        .modal-overlay.active {
            display: flex;
        }

        .modal-overlay.active .modal-content {
            transform: translateY(0);
            opacity: 1;
        }
        .link-container a {
  display: inline-block;  /* Makes links sit side by side */
  margin-right: 20px;    /* Space between links */
}
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            border-bottom: 2px solid var(--dark-red);
            padding-bottom: 10px;
        }

        .modal-header h3 {
            margin: 0;
            color: var(--text-dark);
            font-size: 1.8em;
            font-weight: 700;
        }

        .modal-close-button {
            background: none;
            border: none;
            font-size: 2em;
            cursor: pointer;
            color: var(--text-medium);
            transition: color 0.2s ease;
        }

        .modal-close-button:hover {
            color: var(--primary-red);
        }

        .modal-body {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 12px;
            padding: 5px;
        }

        .modal-body a {
            display: block;
            background-color: var(--off-white-bg);
            color: var(--text-dark);
            padding: 10px 15px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 0.95em;
            text-align: center;
            font-weight: 500;
            transition: background-color 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease;
            border: 1px solid var(--border-light);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .modal-body a:hover {
            background-color: var(--subtle-accent);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px var(--button-shadow);
        }

        .bottom-section2 {
           display: flex;
            gap: 1rem;
            width: 81%;
            margin-top:-8%;
            margin-left:20px;
        }
    </style>
    <style>
        .dropdown-menu {
         display: none;
         position: absolute;
         background-color: white;
         min-width: 220px;
         box-shadow: 0 2px 5px rgba(0,0,0,0.1);
         z-index: 1000;
        }

        .dropdown:hover .dropdown-menu {
         display: block;
        }

        .dropdown-menu a {
         display: block;
         padding: 6px 12px;
         text-decoration: none;
         color: #000;
        }

        .dropdown-menu a:hover {
         background-color: #f0f0f0;
         }

        </style>
<style>
    /* New DPR Calendar Styles */
    .cal {
        width: 300px; /* Added specific width to make calendar wider */
        box-sizing: border-box; /* Ensure padding and border are included in the width */
        /* Add any other styles for the main calendar container here */
        transform: scale(0.92); /* Increased from 0.85 to make it slightly larger */
        transform-origin: top left; /* Scale from top-left corner */
    }

    .cal-header {
        text-align: center;
        margin-bottom: 9px; /* Increased from 8px */
        display: flex;
        justify-content: space-between;
        align-items: center;
        /* Removed: margin-top: -12px; */
        padding: 4px; /* Increased from 3px */
        background-color: maroon; /* Added background */
        color: white; /* Added text color */
        border-radius: 7px 7px 0 0; /* Increased from 6px */
    }

    #cal-prev-month, #cal-next-month {
        background: none;
        border: none;
        font-size: 1.1rem; /* Increased from 1.0rem */
        cursor: pointer;
        padding: 4px 9px; /* Increased from 3px 8px */
        color: white; /* Make arrows white */
        flex-shrink: 0; /* Prevent buttons from shrinking */
        transition: all 0.3s ease; /* Smooth transition for hover effects */
    }

    #cal-prev-month:hover, #cal-next-month:hover {
        background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent white background */
        border-radius: 4px; /* Rounded corners on hover */
        transform: scale(1.1); /* Slightly larger on hover */
    }

    #cal-month-year {
        font-weight: bold;
        font-size: 0.9rem; /* Increased from 0.85rem */
        color: white; /* Make month/year white */
        flex-grow: 1; /* Allow month/year text to take available space */
        text-align: center; /* Ensure text is centered within its flex item */
        transition: all 0.3s ease; /* Smooth transition for hover effects */
    }

    #cal-month-year:hover {
        text-shadow: 0 0 8px rgba(255, 255, 255, 0.5); /* Glow effect on hover */
    }

    .cal-grid {
        display: grid;
        grid-template-columns: repeat(7, 1fr);
        gap: 1.5px; /* Increased from 1px */
        text-align: center;
        padding: 4px; /* Increased from 3px */
        background-color: #fff; /* White background for the grid */
        border: 1px solid #ddd; /* Border for the grid */
        border-radius: 0 0 7px 7px; /* Increased from 6px */
    }

    .cal-day-names {
        font-weight: bold;
        padding: 4px; /* Increased from 3px */
        background-color: #f0f0f0;
        border: 1px solid #ddd;
        font-size: 0.8em; /* Increased from 0.75em */
        box-sizing: border-box;
        transition: all 0.3s ease; /* Smooth transition for hover effects */
    }

    .cal-day-names:hover {
        background-color: #e0e0e0; /* Darker background on hover */
        transform: scale(1.05); /* Slightly larger on hover */
    }

    .cal-grid span {
        padding: 4px; /* Increased from 3px */
        border: 1px solid #ddd;
        background-color: #f9f9f9;
        font-size: 0.8rem; /* Increased from 0.75rem */
        box-sizing: border-box; /* Crucial for preventing overflow */
        transition: all 0.3s ease; /* Smooth transition for hover effects */
        cursor: pointer; /* Show pointer cursor on hoverable elements */
    }

    .cal-grid span:hover {
        background-color: #e8f4fd; /* Light blue background on hover */
        transform: scale(1.1); /* Slightly larger on hover */
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15); /* Subtle shadow on hover */
        z-index: 10; /* Ensure hovered element appears above others */
        position: relative; /* Required for z-index to work */
    }

    .cal-grid span:empty {
        background-color: transparent;
        border: none;
        cursor: default; /* No pointer cursor for empty cells */
    }

    .cal-grid span:empty:hover {
        transform: none; /* No hover effect for empty cells */
        box-shadow: none;
    }

    .cal-current-day {
        background-color: #ffeb3b;
        font-weight: bold;
    }

    .cal-current-day:hover {
        background-color: #ffd700; /* Darker yellow on hover */
        box-shadow: 0 2px 12px rgba(255, 235, 59, 0.4); /* Yellow glow on hover */
    }

    .cal-holiday {
        background-color: #ffcccb;
        position: relative;
    }

    .cal-holiday:hover {
        background-color: #ffb3b3; /* Darker red on hover */
        transform: scale(1.15); /* Larger scale for holidays */
        box-shadow: 0 3px 12px rgba(255, 204, 203, 0.4); /* Red glow on hover */
    }

    .cal-holiday:hover::after {
        content: attr(title);
        position: absolute;
        background: #333;
        color: white;
        padding: 4px; /* Reduced from 5px */
        border-radius: 3px;
        font-size: 0.75rem; /* Increased from 0.7rem */
        z-index: 1;
        bottom: 100%;
        left: 50%;
        transform: translateX(-50%);
        white-space: nowrap;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3); /* Shadow for tooltip */
        animation: fadeIn 0.3s ease; /* Smooth fade-in animation */
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateX(-50%) translateY(5px); }
        to { opacity: 1; transform: translateX(-50%) translateY(0); }
    }

    .cal-sunday {
        color: red;
    }

    .cal-sunday:hover {
        background-color: #ffe6e6; /* Light red background on hover */
        color: #cc0000; /* Darker red text on hover */
    }

    .cal-saturday {
        color: blue;
    }

    .cal-saturday:hover {
        background-color: #e6f3ff; /* Light blue background on hover */
        color: #0066cc; /* Darker blue text on hover */
    }

    .cal-clickable {
        background-color: #e0f7fa;
        text-decoration: underline !important;
        font-weight: bold;
        cursor: pointer;
    }

    .cal-clickable:hover {
        background-color: #b2ebf2;
        transform: scale(1.1); /* Slightly larger on hover */
        box-shadow: 0 2px 8px rgba(224, 247, 250, 0.4); /* Cyan glow on hover */
    }
    /* Responsive adjustments for DPR Calendar */
    @media (max-width: 1024px) {
        .cal {
            width: 25%; /* Adjusted for tablet */
            transform: scale(0.95); /* Increased from 0.9 */
        }
    }

    @media (max-width: 768px) {
        .cal {
            width: 100%; /* Full width on mobile */
            max-width: 400px; /* Max width for better appearance on very large mobile */
            margin: 0 auto; /* Center on mobile */
            transform: scale(1); /* Full size on mobile */
        }
    }
 </style>

 
</head>
<body>
<div id="main-content-wrapper">
    <header>
        <div class="logo">
            <img src="Images/NALCO-Photoroom.png" alt="NALCO Logo" />
        </div>
        <nav>
            <ul class="nav-main">
                <li class="dropdown"><a href="#" class="dropdown-toggle">Applications</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/apps/erp" target="_blank">ERP System</a></li>
                        <li><a href="http://10.1.5.7/apps/hr" target="_blank">HR Portal</a></li>
                        <li><a href="http://10.1.5.7/apps/finance" target="_blank">Finance App</a></li>
                        <li><a href="http://10.1.5.7/apps/project" target="_blank">Project Mgmt</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Policies</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/policies/hr.pdf" target="_blank">HR Policy</a></li>
                        <li><a href="http://10.1.5.7/policies/safety.pdf" target="_blank">Safety Policy</a></li>
                        <li><a href="http://10.1.5.7/policies/it.pdf" target="_blank">IT Policy</a></li>
                        <li><a href="http://10.1.5.7/policies/ethics.pdf" target="_blank">Ethics Policy</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Manuals</a>
                    <ul class="dropdown-menu">
                        <li><a href="http://10.1.5.7/manuals/operations.pdf" target="_blank">Operations Manual</a></li>
                        <li><a href="http://10.1.5.7/manuals/maintenance.pdf" target="_blank">Maintenance Guide</a></li>
                        <li><a href="http://10.1.5.7/manuals/safety.pdf" target="_blank">Safety Manual</a></li>
                        <li><a href="http://10.1.5.7/manuals/quality.pdf" target="_blank">Quality Manual</a></li>
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
                 <li class="dropdown"><a href="#" class="dropdown-toggle">Quick Link</a>
                    <div class="dropdown-menu">
                       <a href="http://10.130.82.111/hmsreports/Login.aspx" target="_blank">Centralised Applications</a>
                       <a href="http://10.40.0.20/payroll_system/login.asp" target="_blank">Compliance Management</a>
                        <a href="http://10.40.0.20/Sanginee-Mahila%20Samiti%20Magazine/Sanginee%20(April-June%202020).pdf" target="_blank">Sanginee(Apr-Jun'20)</a>
                        <a href="http://10.40.0.20/ERP/ERP.html" target="_blank">ERP Project N'Vision</a>
                       <a href="http://10.40.0.20/Operation%20Manuals/Manuals.html" target="_blank">Manuals</a>
                        <a href="http://10.40.0.20/ERP/ERP.html" target="_blank">Lotus Notes</a>
                        <a href="https://nalcoindia.com/wp-login.php" target="_blank">Online Traders</a>
                        <a href="http://10.40.0.20/GST/GST.html#nalco_docs" target="_blank">GST</a>
                    </div>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">Others Links</a>
                    <div class="dropdown-menu">
                        <a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Hospital Reports View</a>
                        <a href="http://10.60.255.33/nalcocmc/index.aspx" target="_blank">Payroll System</a>
                        <a href="http://10.60.235.33:81/" target="_blank">Guest House Reservation</a>
                        <a href="http://10.130.82.111/ccr/" target="_blank">Civil Complaints</a>
                        <a href="http://nalcorefinery/bis_asp/start.shtml" target="_blank">Indian Standards</a>
                        <a href="http://10.1.5.7/finance.htm" target="_blank">Finance e Journal</a>
                    </div>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle">ISO/Env/Safety/EnMS</a>
                    <div class="dropdown-menu">
                        <a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Hospital Reports View</a>
                        <a href="http://10.60.255.33/nalcocmc/index.aspx" target="_blank">Payroll System</a>
                        <a href="http://10.60.235.33:81/" target="_blank">Guest House Reservation</a>
                        <a href="http://10.130.82.111/ccr/" target="_blank">Civil Complaints</a>
                        <a href="http://nalcorefinery/bis_asp/start.shtml" target="_blank">Indian Standards</a>
                        <a href="http://10.1.5.7/finance.htm" target="_blank">Finance e Journal</a>
                    </div>
                </li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle">Blacklisted Vendors</a>
                    <div class="dropdown-menu">
                        <a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Hospital Reports View</a>
                        <a href="http://10.60.255.33/nalcocmc/index.aspx" target="_blank">Payroll System</a>
                        <a href="http://10.60.235.33:81/" target="_blank">Guest House Reservation</a>
                        <a href="http://10.130.82.111/ccr/" target="_blank">Civil Complaints</a>
                        <a href="http://nalcorefinery/bis_asp/start.shtml" target="_blank">Indian Standards</a>
                        <a href="http://10.1.5.7/finance.htm" target="_blank">Finance e Journal</a>
                    </div>
                </li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle">HRD</a>
                    <div class="dropdown-menu">
                        <a href="http://10.60.235.33/Account/Login.aspx" target="_blank">Hospital Reports View</a>
                        <a href="http://10.60.255.33/nalcocmc/index.aspx" target="_blank">Payroll System</a>
                        <a href="http://10.60.235.33:81/" target="_blank">Guest House Reservation</a>
                        <a href="http://10.130.82.111/ccr/" target="_blank">Civil Complaints</a>
                        <a href="http://nalcorefinery/bis_asp/start.shtml" target="_blank">Indian Standards</a>
                        <a href="http://10.1.5.7/finance.htm" target="_blank">Finance e Journal</a>
                    </div>
                </li>
                  <li class="dropdown"><a href="http://10.60.235.110/NALCO_Intranet/Default.aspx"  target="_blank">Log In</a>
                </li>
            </ul>
        </nav>
          <div class="logo" style="
        width: 260px; height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    font-size: 28px;
    color: white; background: linear-gradient(to bottom, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.3)), url('../NALCO_Intranet/Images/CPP.jpg') no-repeat center;
    background-size: cover;
    border-radius: 5px;
    margin-left: 15px; letter-spacing: 6px;
    text-transform: uppercase;
    font-family: 'Segoe UI', sans-serif;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8); ">
         C P P
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

    <div class="card birthday-card">
        <h3>Birthdays</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="birthday-slider">
             </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'birthday-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
        </div>
    </div>
</section>



<section class="middle-section" style="height:300px">
   <div class="card">
     <h3>📢 Notices</h3>
      <div class="scroll-container">
        <ul class="scroll-list" id="notices-list" style="height:300px;">
          </ul>
       <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'notices-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
      </div>
        <div id="paginationNotice" style="margin-top: 55%; text-align: center;"></div>

    </div>
     
   <div class="card">
        <h3>📝 Circulars</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="circular-list"  style="height:15px;">
                </ul>
            <div id="paginationCircular" style="margin-top: 55%; text-align: center;"></div>
            <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'circular-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
        </div>
    </div>

     <div class="card">
        <h3>🗓 Events</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="events-list"  style="height:15px;">
                </ul>
            <div id="paginationEvents" style="margin-top: 55%; text-align: center;"></div>
            <%--<button class="scroll-control-btn" onclick="toggleScroll(this, 'events-list')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>--%>
        </div>
    </div>
     
    <div class="card">
       <h3>DPR</h3>
        <div class="cal"> <!-- Moved width to CSS -->
            <div class="cal-header">
                <button id="cal-prev-month">←</button>
                <span id="cal-month-year"></span>
                <button id="cal-next-month">→</button>
            </div>
            <div class="cal-grid" id="cal-grid">
                <span class="cal-day-names">Sun</span>
                <span class="cal-day-names">Mon</span>
                <span class="cal-day-names">Tue</span>
                <span class="cal-day-names">Wed</span>
                <span class="cal-day-names">Thu</span>
                <span class="cal-day-names">Fri</span>
                <span class="cal-day-names">Sat</span>
            </div>
        </div>
    </div>

    <div class="card calendar" style="width: 19%;">
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


       
<section class="middle-section2"style="margin-top:10px">
    <div class="production-figures" style="width: 27%; height: 140px;">
        <div class="mini-card2" style="width: 60%; max-width: 480px; margin: 0 auto; padding: 12px; height: 130px;">
            <h4 style="text-align: center; font-size: 18px; color: maroon; margin-bottom: 10px;">MIS REPORTS</h4>
            <div class="mis-reports-container" style="display: flex; justify-content: center;">
                <ul class="report-list" style="display: flex; gap: 12px; list-style: none; padding: 0; margin: 0;">
                    <li><a href="#" class="mis-report-link" style="text-decoration: none; font-size: 13px; color: #333;" data-report-type="annual">Annual Reports</a></li>
                    <li><a href="#" class="mis-report-link" style="text-decoration: none; font-size: 13px; color: #333;" data-report-type="mom_cp">MoM of C&amp;P Meetings</a></li>
                    <li><a href="#" class="mis-report-link" style="text-decoration: none; font-size: 13px; color: #333;" data-report-type="energy_audit">Energy Audit Reports</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="production-figures" style="width: 30%; height: 145px;">
        <div class="mini-card2" style="height: 100%; position: relative; padding: 4px;">
            <h4 style="text-align: center; font-size: 18px; margin: 7px 0;">PRODUCTION FIGURE</h4>
            <div style="display: flex; flex-direction: row; align-items: center; justify-content: center; height: calc(100% - 24px); gap: 20px;">
                <div style="position: relative; width: 110px; height: 110px;">
                    <canvas id="combinedGauge" width="110" height="110"></canvas>
                    <div id="percentageCenter" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -45%); text-align: center;">
                        <strong id="percentageText" style="font-size: 16px;">75.5%</strong>
                    </div>
                    <div id="gauge-tooltip" style="display: none; position: absolute; background: #fff; color: #333; padding: 4px 8px; font-size: 11px; border-radius: 4px; box-shadow: 0 2px 6px rgba(0,0,0,0.2); pointer-events: none; z-index: 10; transform: translate(-50%, -100%);"></div>
                </div>
                <div style="font-size: 15px; text-align: left; line-height: 1.4;">
                    <div>
                        <span style="display: inline-block; width: 10px; height: 10px; background-color: #4CAF50; border-radius: 2px; margin-right: 3px;"></span>
                        <strong>Mon Gross Gen:</strong> <span style="color: #1e785c;">480.12 MU</span>
                    </div>
                    <div>
                        <span style="display: inline-block; width: 10px; height: 10px; background-color: #007bff; border-radius: 2px; margin-right: 3px;"></span>
                        <strong>Target Gen:</strong> <span style="color: #2c328b;">636 MU</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card2" style="height: 110px; width: 360px;">
        <div class="card-header" style="color: maroon; text-align: center; font-weight: bold; font-size: 1.1rem; padding-bottom: 6px; border-bottom: 2px solid maroon; margin-bottom: 0.4rem;">MPR</div>
        <div class="card-body" style="display: flex; flex-direction: column; gap: 0.2rem;">
            <select id="yearSelect" style="width: 100%; padding: 4px 6px; font-size: 0.85rem; border: 1px solid #ccc; border-radius: 4px;"></select>
            <select id="monthSelect" style="width: 100%; padding: 4px 6px; font-size: 0.85rem; border: 1px solid #ccc; border-radius: 4px;"></select>
        </div>
        <button class="download-btn" onclick="downloadReport()" style="width: 55%; padding: 6px; background-color: maroon; color: #fff; border: none; border-radius: 4px; cursor: pointer; font-size: 0.85rem; margin-top: 0.3rem; display: block; margin-left: auto; margin-right: auto;">Download Report</button>
    </div>

    <div class="card superannuation-card" style="background: url('../NALCO_Intranet/Images/retirenew.jpg') no-repeat center; background-size: cover; width: 15%;">
        <h3>Superannuations</h3>
        <div class="scroll-container">
            <ul class="scroll-list" id="superannuating-slider">
                <!-- Superannuations will be populated dynamically -->
            </ul>
            <button class="scroll-control-btn" onclick="toggleScroll(this, 'superannuating-slider')" style="background: transparent; color: maroon; width: 40px; height: 40px; font-size: 26px;">⏸</button>
        </div>
    </div>
</section>

    </div>
    <section>
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

   
     <section class="bottom-section2">
        <div class="cards-slider-wrapper">
            <div class="cards-slider">
                <%--<div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('../NALCO_Intranet/Images/Nalco-Bhavan.jpg') no-repeat center; background-size: cover;  height:100px; width:242px;">
                    <h2>Corporate</h2>
                </div>--%>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/smelter.jpg') no-repeat center; background-size: cover;height:100px; width:208px; cursor: pointer;" onclick="window.location.href='Smelter.aspx';">
                    <h2>Smelter</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/CPP.jpg') no-repeat center; background-size: cover; height:100px; width:208px; cursor: pointer;" onclick="window.location.href='CPP.aspx';">
                    <h2>CPP</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/refiner.jpg') no-repeat center; background-size: cover; height:100px; width:208px; cursor: pointer;" onclick="window.location.href='Refinary_New.aspx';">
                    <h2>Refinery</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/NalcoMines.jpg') no-repeat center; background-size: cover; height:100px; width:208px; cursor: pointer;" onclick="window.location.href='Mines.aspx';">
                    <h2>Mines</h2>
                </div>
                <div class="card" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('Images/marketstock.jpg') no-repeat center; background-size: cover; height:100px; width:208px;">
                    <h2>Market Watch</h2>
                </div>
            </div>
        </div>
       

</section>
           <footer style="height=5px;padding-bottom: 1px;padding-top: 1px;padding-right: 5px;padding-left: 5px;">
        <p>© 2025 NALCO. All Rights Reserved.</p>
    </footer>
</div>
<div class="modal-overlay" id="misReportsModal">
    <div class="modal-content">
        <div class="modal-header">
            <h3 id="modalTitle"></h3>
            <button class="modal-close-button" id="closeModal">&times;</button>
        </div>
        <div class="modal-body" id="modalReportsGrid">
        </div>
    </div>
</div>

<%--<script>
    let loadedHolidaysData = null;
    let tooltipActive = false;

    fetch('data.json')
        .then(response => response.json())
        .then(data => {
            loadedHolidaysData = data;
            generateCalendar();
        })
        .catch(error => {
            console.error('Error loading data.json:', error);
            loadedHolidaysData = { nalco_holidays: [], birthdays: [] };
            generateCalendar();
        });

    let currentDate = new Date();
    const today = new Date();
    function generateCalendar() {
        const monthYear = document.getElementById("month-year");
        const calendarGrid = document.getElementById("calendar-grid");
        calendarGrid.innerHTML = '';
        const fragment = document.createDocumentFragment();
        const dayNames = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
        dayNames.forEach(name => {
            const span = document.createElement('span');
            span.classList.add('day-names');
            if (name === 'Sun') span.classList.add('sun');
            if (name === 'Sat') span.classList.add('sat');
            span.textContent = name;
            fragment.appendChild(span);
        });
        const monthNames = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"];
        monthYear.textContent = `${monthNames[currentDate.getMonth()]} ${currentDate.getFullYear()}`;

        const firstDay = new Date(currentDate.getFullYear(), currentDate.getMonth(), 1).getDay();
        const daysInMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate();

        let customTooltip = document.getElementById('custom-tooltip');
        if (!customTooltip) {
            customTooltip = document.createElement('div');
            customTooltip.id = 'custom-tooltip';
            document.querySelector('.card.calendar').appendChild(customTooltip);
        }

        for (let i = 0; i < firstDay; i++) {
            fragment.appendChild(document.createElement('span'));
        }

        for (let day = 1; day <= daysInMonth; day++) {
            const date = new Date(currentDate.getFullYear(), currentDate.getMonth(), day);
            const daySpan = document.createElement('span');
            daySpan.textContent = day;

            const dayOfWeek = date.getDay();
            if (dayOfWeek === 0) daySpan.classList.add('sun');
            else if (dayOfWeek === 6) daySpan.classList.add('sat');
            if (day === today.getDate() && currentDate.getMonth() === today.getMonth() && currentDate.getFullYear() === today.getFullYear()) {
                daySpan.classList.add('current-day');
            }

            let currentDayHoliday = null;
            if (loadedHolidaysData?.nalco_holidays) {
                currentDayHoliday = loadedHolidaysData.nalco_holidays.find(holiday => {
                    const [dayStr, monthStr, yearStr] = holiday.holiday_date.split(' ')[0].split('-');
                    const hDay = parseInt(dayStr, 10);
                    const hMonth = parseInt(monthStr, 10) - 1;
                    const hYear = parseInt(yearStr, 10);
                    return hDay === day && hMonth === currentDate.getMonth() && hYear === currentDate.getFullYear();
                });
            }

            if (currentDayHoliday) {
                if (currentDayHoliday.type === 'PH') {
                    daySpan.classList.add('public-holiday');
                } else if (currentDayHoliday.type === 'RH') {
                    daySpan.classList.add('restricted-holiday');
                }
                if (currentDayHoliday.type !== 'WO') {
                    daySpan.dataset.tooltip = currentDayHoliday.Title;
                }
            }

            let currentDayBirthdays = [];
            if (loadedHolidaysData?.birthdays) {
                currentDayBirthdays = loadedHolidaysData.birthdays.filter(birthday => {
                    const [dayStr, monthStr, yearStr] = birthday.pub_date.split(' ')[0].split('-');
                    const bDay = parseInt(dayStr, 10);
                    const bMonth = parseInt(monthStr, 10) - 1;
                    const bYear = parseInt(yearStr, 10);
                    return bDay === day && bMonth === currentDate.getMonth();
                });
            }

            if (currentDayBirthdays.length > 0) {
                daySpan.classList.add('birthday');
                const birthdayNames = currentDayBirthdays.map(b => b.emp_name).join(', ');
                daySpan.dataset.tooltip = daySpan.dataset.tooltip
                    ? `${daySpan.dataset.tooltip}\nBirthdays: ${birthdayNames}`
                    : `Birthdays: ${birthdayNames}`;
            }

            if (daySpan.dataset.tooltip) {
                daySpan.addEventListener('mouseover', function (event) {
                    const rect = event.target.getBoundingClientRect();
                    customTooltip.textContent = event.target.dataset.tooltip;
                    customTooltip.style.left = `${rect.left + rect.width / 2}px`;
                    customTooltip.style.top = `${rect.top - customTooltip.offsetHeight - 8}px`;
                    customTooltip.style.opacity = '1';
                    customTooltip.style.visibility = 'visible';
                    tooltipActive = true;
                });
                daySpan.addEventListener('mouseout', function () {
                    customTooltip.style.opacity = '0';
                    customTooltip.style.visibility = 'hidden';
                    tooltipActive = false;
                });
            }

            fragment.appendChild(daySpan);
        }
        calendarGrid.appendChild(fragment);
    }

    document.getElementById("prev-month").addEventListener("click", () => {
        currentDate.setMonth(currentDate.getMonth() - 1);
        generateCalendar();
    });
    document.getElementById("next-month").addEventListener("click", () => {
        currentDate.setMonth(currentDate.getMonth() + 1);
        generateCalendar();
    });
</script>--%>


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

        function toggleScroll(button, listId) {
            const list = document.getElementById(listId);
            const isPaused = list.style.animationPlayState === 'paused';
            list.style.animationPlayState = isPaused ? 'running' : 'paused';
            button.textContent = isPaused ? '⏸' : '▶';
        }

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
                        if (res) response += (response ? "\n\n" : "") + res;
                    });
                }

                addBotMessage(response || `I couldn't find an exact match in ${selectedDataSource} data.\nTry rephrasing your query (e.g., 'nalco operations', 'clause 1.1') or type 'help' for assistance!`);
            }
        });
    </script>
    <script>
        let currentIndex = 0;
        const cardWidth = 373.33;
        const totalCards = 6;
        const visibleCards = 3;
        const slider = document.getElementById('cardsSlider');

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

        function autoSlide() {
            if (currentIndex < totalCards - visibleCards) {
                currentIndex++;
            } else {
                currentIndex = 0;
            }
            updateSliderPosition();
        }

        setInterval(autoSlide, 1500);
    </script>
    <script>
        const today = new Date();
        let currentDate = new Date();
        let allHolidays = [];
        const IMAGE_BASE_URL = "http://10.1.5.7/images/emp_pic/";

        function sendLoginRequest() {
            const payload = {
                "PERNR": "",
                "param1": "1300", // Changed to 1200 for Refinery Unit
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
     const FILE_BASE_URL_NOTICE = "http://10.1.5.7/notices/";
     const apiUrl = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";

     const itemsPerPageNotice = 3;
     let currentPageNotice = 1;
     let notices = [];

     function fetchNoticesFromAPI() {
         console.log("Starting fetchNoticesFromAPI at", new Date().toLocaleString());
         const payload = {
             "PERNR": "",
             "param1": "1300", // Try "1300" first; adjust if needed
             "param2": "",
             "param3": "",
             "Token": ""
         };

         // Check if notices-list exists
         const list = document.getElementById("notices-list");
         if (!list) {
             console.error("DOM element #notices-list not found");
             return;
         }

         // Check if paginationNotice exists
         const paginationContainer = document.getElementById("paginationNotice");
         if (!paginationContainer) {
             console.error("DOM element #paginationNotice not found");
             list.innerHTML = '<li style="color:red;">Error: Pagination container missing</li>';
             return;
         }

         list.innerHTML = '<li>Loading notices...</li>';

         fetch(apiUrl, {
             method: 'POST',
             headers: {
                 'Content-Type': 'application/json',
                 'Authorization': 'Bearer N@lco!@#$123'
             },
             body: JSON.stringify(payload)
         })
             .then(response => {
                 console.log("API Response Status:", response.status, response.statusText);
                 if (!response.ok) {
                     return response.text().then(text => {
                         throw new Error(`HTTP ${response.status}: ${text}`);
                     });
                 }
                 return response.json();
             })
             .then(data => {
                 console.log("Notices API Raw Response:", JSON.stringify(data, null, 2));

                 const rawNotices = data?.notices || data?.data?.notices || data?.events || data?.data?.events || data?.Data || [];
                 console.log("Raw Notices Data:", rawNotices);

                 if (Array.isArray(rawNotices)) {
                     notices = rawNotices.map(item => ({
                         title: item.Title || item.title || 'Untitled Notice',
                         date: item.pub_date || item.Pub_Date || new Date().toISOString(),
                         fileUrl: item.File_Name || item.file_name
                             ? `${FILE_BASE_URL_NOTICE}${encodeURIComponent(item.File_Name || item.file_name)}`
                             : '#'
                     }));
                 } else {
                     notices = [];
                     console.warn("No valid notices array found in API response");
                 }

                 console.log("Processed Notices:", notices);

                 currentPageNotice = 1;
                 displayNotices(currentPageNotice);
                 setTimeout(renderPaginationNotice, 100); // Match circulars script
             })
             .catch(error => {
                 console.error("Notices API Error:", error.message);
                 list.innerHTML = `<li style="color:red;">Failed to load notices: ${error.message}</li>`;
                 setTimeout(renderPaginationNotice, 100); // Ensure pagination renders
             });
     }

     function displayNotices(page) {
         console.log("Displaying notices for page:", page);
         const start = (page - 1) * itemsPerPageNotice;
         const end = start + itemsPerPageNotice;
         const paginatedItems = notices.slice(start, end);
         console.log("Paginated Items:", paginatedItems);

         const list = document.getElementById('notices-list');
         if (!list) {
             console.error("DOM element #notices-list not found during displayNotices");
             return;
         }

         list.innerHTML = '';

         if (paginatedItems.length === 0) {
             list.innerHTML = '<li>No notices to display</li>';
             renderPaginationNotice();
             return;
         }

         paginatedItems.forEach(item => {
             const li = document.createElement('li');
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
             li.style.borderBottom = '1px solid #ccc';
             li.style.padding = '10px 0';
             list.appendChild(li);
         });

         renderPaginationNotice();
     }

     function renderPaginationNotice() {
         console.log("Rendering pagination: total notices =", notices.length);
         const container = document.getElementById("paginationNotice");
         if (!container) {
             console.error("DOM element #paginationNotice not found during renderPaginationNotice");
             return;
         }

         container.innerHTML = '';

         const totalPages = Math.ceil(notices.length / itemsPerPageNotice);
         console.log("Total pages:", totalPages);

         // Always render pagination, even if only one page
         if (totalPages < 1) {
             container.innerHTML = '<span style="color:gray;">No pages</span>';
             return;
         }

         for (let i = 1; i <= totalPages; i++) {
             const btn = document.createElement("button");
             btn.textContent = i;
             btn.style.marginTop = "10px";
             btn.style.padding = "4px 8px";
             btn.style.backgroundColor = i === currentPageNotice ? "#8B0000" : "#ddd";
             btn.style.color = i === currentPageNotice ? "white" : "black";
             btn.style.border = "none";
             btn.style.borderRadius = "4px";
             btn.style.cursor = "pointer";
             btn.style.marginLeft = "5px";
             btn.onclick = () => {
                 currentPageNotice = i;
                 console.log("Pagination button clicked: page", i);
                 displayNotices(i);
             };
             container.appendChild(btn);
         }

         console.log("Pagination buttons rendered:", container.innerHTML);
     }

     function formatDate(dateString) {
         const date = new Date(dateString);
         if (isNaN(date.getTime())) {
             console.warn("Invalid date:", dateString);
             return 'Invalid Date';
         }
         const now = new Date();
         const diff = Math.floor((now - date) / (1000 * 60 * 60 * 24));
         if (diff === 0) return 'Today';
         if (diff === 1) return 'Yesterday';
         if (diff < 7) return `${diff} days ago`;
         return date.toLocaleDateString();
     }

     function downloadItem(el) {
         const url = el.getAttribute('data-url');
         console.log("Downloading item:", url);
         window.open(url, '_blank');
     }

     document.addEventListener('DOMContentLoaded', () => {
         console.log("DOM Content Loaded, calling fetchNoticesFromAPI");
         fetchNoticesFromAPI();
     });
 </script>




  <script>
      const FILE_BASE_URL_CIRCULARS = "http://10.1.5.7/circulars/";
      const API_URL = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";

      const itemsPerPageCircular = 3;
      let currentPageCircular = 1;
      let circulars = [];

      function fetchCircularsFromAPI() {
          const payload = {
              "PERNR": "",
              "param1": "1300",  // <-- Circulars param
              "param2": "",
              "param3": "",
              "Token": ""
          };

          fetch(API_URL, {
              method: "POST",
              headers: {
                  "Content-Type": "application/json",
                  "Authorization": "Bearer N@lco!@#$123"
              },
              body: JSON.stringify(payload)
          })
              .then(response => {
                  if (!response.ok) {
                      return response.text().then(text => {
                          throw new Error(`HTTP ${response.status}: ${text}`);
                      });
                  }
                  return response.json();
              })
              .then(data => {
                  console.log("Circular API Raw Response:", data);

                  const raw = data.circulars || data.data?.circulars || data.data || [];

                  circulars = Array.isArray(raw)
                      ? raw.map(item => ({
                          title: item.Title || "Untitled Circular",
                          date: item.pub_date || item.Date || new Date().toISOString(),
                          fileUrl: item.File_Name
                              ? `${FILE_BASE_URL_CIRCULARS}${encodeURIComponent(item.File_Name)}`
                              : "#"
                      }))
                      : [];

                  currentPageCircular = 1;
                  displayCirculars(currentPageCircular); // display data
                  setTimeout(renderPaginationCircular, 100); // render pagination after DOM updates


              })
              .catch(error => {
                  console.error("Circulars API Error:", error);
                  const list = document.getElementById("circular-list");
                  list.innerHTML = `<li style="color:red;">Failed to load circulars: ${error.message}</li>`;
              });
      }

      function displayCirculars(page) {
          const start = (page - 1) * itemsPerPageCircular;
          const end = start + itemsPerPageCircular;
          const paginatedItems = circulars.slice(start, end);

          const list = document.getElementById("circular-list");
          list.innerHTML = "";

          if (paginatedItems.length === 0) {
              list.innerHTML = "<li>No circulars to display</li>";
              renderPaginationCircular(); // ✅ Ensure pagination still renders
              return;
          }

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

          renderPaginationCircular(); // ✅ Always called at the end
      }

      function renderPaginationCircular() {
          const container = document.getElementById("paginationCircular");
          console.log("Rendering pagination: total circulars =", circulars.length);
          container.innerHTML = "";

          const totalPages = Math.ceil(circulars.length / itemsPerPageCircular);
          console.log("Total pages:", totalPages);

          if (totalPages < 1) {
              container.innerHTML = '<span style="color:gray;">No pages</span>';
              return;
          }

          for (let i = 1; i <= totalPages; i++) {
              const btn = document.createElement("button");
              btn.textContent = i;
              btn.style.marginTop = "10px";
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


      function downloadItem(el) {
          const url = el.getAttribute("data-url");
          window.open(url, "_blank");
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

      document.addEventListener("DOMContentLoaded", fetchCircularsFromAPI);
  </script>
 <script>
     const FILE_BASE_URL_EVENTS = "http://10.1.5.7/events/";
     const API_URLS = "https://mudira.nalcoindia.co.in:5269/NalcoIntranet_Data";

     const itemsPerPageEvents = 3;
     let currentPageEvents = 1;
     let events = [];

     function fetchEventsFromAPI() {
         console.log("HIT")
         const payload = {
             "PERNR": "",
             "param1": "1300",  // <-- Circulars param
             "param2": "",
             "param3": "",
             "Token": ""
         };

         fetch(API_URLS, {
             method: "POST",
             headers: {
                 "Content-Type": "application/json",
                 "Authorization": "Bearer N@lco!@#$123"
             },
             body: JSON.stringify(payload)
         })
             .then(response => {
                 if (!response.ok) {
                     return response.text().then(text => {
                         throw new Error(`HTTP ${response.status}: ${text}`);
                     });
                 }
                 return response.json();
             })
             .then(data => {
                 console.log("events API Raw Response:", data);

                 const raw = data.events || data.data?.events || data.data || [];

                 events = Array.isArray(raw)
                     ? raw.map(item => ({
                         title: item.Title || "Untitled Events",
                         date: item.pub_date || item.Date || new Date().toISOString(),
                         fileUrl: item.File_Name
                             ? `${FILE_BASE_URL_CIRCULARS}${encodeURIComponent(item.File_Name)}`
                             : "#"
                     }))
                     : [];

                 currentPageEvents = 1;
                 renderPaginationEvents();
                 displayEvents(currentPageEvents);
             })
             .catch(error => {
                 console.error("Circulars API Error:", error);
                 const list = document.getElementById("events-list");
                 list.innerHTML = `<li style="color:red;">Failed to load circulars: ${error.message}</li>`;
             });
     }

     function displayEvents(page) {
         const start = (page - 1) * itemsPerPageEvents;
         const end = start + itemsPerPageEvents;
         const paginatedItems = events.slice(start, end);

         const list = document.getElementById("events-list");
         list.innerHTML = "";

         if (paginatedItems.length === 0) {
             list.innerHTML = "<li>No circulars to display</li>";
             return;
         }

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
     }

     function renderPaginationEvents() {
         const totalPages = Math.ceil(events.length / itemsPerPageEvents);
         const container = document.getElementById("paginationCircular");
         container.innerHTML = "";

         if (totalPages <= 1) return;

         for (let i = 1; i <= totalPages; i++) {
             const btn = document.createElement("button");
             btn.textContent = i;
             btn.style.margin = "0 5px";
             btn.style.padding = "4px 8px";
             btn.style.backgroundColor = i === currentPageEvents ? "#8B0000" : "#ddd";
             btn.style.color = i === currentPageCircular ? "white" : "black";
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
         const diff = Math.floor((now - date) / (1000 * 60 * 60 * 24));

         if (diff === 0) return "Today";
         if (diff === 1) return "Yesterday";
         if (diff < 7) return `${diff} days ago`;
         return date.toLocaleDateString();
     }

     document.addEventListener("DOMContentLoaded", fetchEventsFromAPI);
 </script>
 






  
    <script>
        // --- MIS Reports Modal Logic ---
        document.addEventListener('DOMContentLoaded', () => {
            const mainContentWrapper = document.getElementById('main-content-wrapper');
            const misReportsModal = document.getElementById('misReportsModal');
            const modalTitle = document.getElementById('modalTitle');
            const modalReportsGrid = document.getElementById('modalReportsGrid');
            const closeModalBtn = document.getElementById('closeModal');
            const misReportLinks = document.querySelectorAll('.mis-report-link'); // Changed selector
            const monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

            function generatePdfLink(basePath, title, isDownload = true) {
                const link = document.createElement('a');
                link.textContent = title;
                link.href = `${basePath}/${title.replace(/[^a-zA-Z0-9]/g, '_')}.pdf`;
                if (isDownload) {
                    link.setAttribute('download', '');
                }
                return link;
            }

            function openModal(title, reportType) {
                modalTitle.textContent = title;
                modalReportsGrid.innerHTML = '';

                const today = new Date();
                const currentYear = today.getFullYear();
                const currentMonth = today.getMonth();
                const currentDayOfMonth = today.getDate();

                if (reportType === 'monthly') {
                    for (let i = 0; i < 12; i++) {
                        let targetMonth = currentMonth - i;
                        let targetYear = currentYear;

                        if (targetMonth < 0) {
                            targetMonth += 12;
                            targetYear--;
                        }
                        const reportTitle = `${monthNames[targetMonth]} ${targetYear}`;
                        modalReportsGrid.appendChild(generatePdfLink('/mis_reports/monthly', reportTitle));
                    }
                } else if (reportType === 'daily') {
                    for (let i = 0; i < 12; i++) {
                        const d = new Date(currentYear, currentMonth, currentDayOfMonth - i);
                        const day = d.getDate();
                        const month = monthNames[d.getMonth()];
                        const year = d.getFullYear();
                        const reportTitle = `${day < 10 ? '0' + day : day}-${month}-${year}`;
                        modalReportsGrid.appendChild(generatePdfLink('/mis_reports/daily', reportTitle));
                    }
                } else {
                    const defaultLinks = {
                        'quarterly': [
                            { title: 'Q1 2025', path: '/mis_reports/quarterly/Q1_2025.pdf' },
                            { title: 'Q2 2025', path: '/mis_reports/quarterly/Q2_2025.pdf' },
                            { title: 'Q3 2024', path: '/mis_reports/quarterly/Q3_2024.pdf' },
                            { title: 'Q4 2024', path: '/mis_reports/quarterly/Q4_2024.pdf' },
                            { title: 'Q1 2024', path: '/mis_reports/quarterly/Q1_2024.pdf' },
                            { title: 'Q2 2023', path: '/mis_reports/quarterly/Q2_2023.pdf' },
                            { title: 'Q3 2023', path: '/mis_reports/quarterly/Q3_2023.pdf' },
                            { title: 'Q4 2023', path: '/mis_reports/quarterly/Q4_2023.pdf' }
                        ],
                        'annual': [
                            { title: 'FY 2024-25', path: '/mis_reports/annual/FY_2024_25.pdf' },
                            { title: 'FY 2023-24', path: '/mis_reports/annual/FY_2023_24.pdf' },
                            { title: 'FY 2022-23', path: '/mis_reports/annual/FY_2022_23.pdf' },
                            { title: 'FY 2021-22', path: '/mis_reports/annual/FY_2021_22.pdf' },
                            { title: 'FY 2020-21', path: '/mis_reports/annual/FY_2020_21.pdf' },
                            { title: 'FY 2019-20', path: '/mis_reports/annual/FY_2019_20.pdf' }
                        ],
                        'mom_cp': [
                            { title: 'May 2025 MoM', path: '/mis_reports/mom_cp/May_2025_MoM.pdf' },
                            { title: 'Apr 2025 MoM', path: '/mis_reports/mom_cp/Apr_2025_MoM.pdf' },
                            { title: 'Mar 2025 MoM', path: '/mis_reports/mom_cp/Mar_2025_MoM.pdf' },
                            { title: 'Feb 2025 MoM', path: '/mis_reports/mom_cp/Feb_2025_MoM.pdf' },
                            { title: 'Jan 2025 MoM', path: '/mis_reports/mom_cp/Jan_2025_MoM.pdf' },
                            { title: 'Dec 2024 MoM', path: '/mis_reports/mom_cp/Dec_2024_MoM.pdf' },
                            { title: 'Nov 2024 MoM', path: '/mis_reports/mom_cp/Nov_2024_MoM.pdf' },
                            { title: 'Oct 2024 MoM', path: '/mis_reports/mom_cp/Oct_2024_MoM.pdf' }
                        ],
                        'energy_audit': [
                            { title: 'Audit 2024', path: '/mis_reports/energy_audit/Audit_2024.pdf' },
                            { title: 'Audit 2023', path: '/mis_reports/energy_audit/Audit_2023.pdf' },
                            { title: 'Audit 2022', path: '/mis_reports/energy_audit/Audit_2022.pdf' },
                            { title: 'Audit 2021', path: '/mis_reports/energy_audit/Audit_2021.pdf' },
                            { title: 'Audit 2020', path: '/mis_reports/energy_audit/Audit_2020.pdf' }
                        ]
                    };
                    const linksData = defaultLinks[reportType] || [{ title: 'No reports available.', path: '#' }];
                    linksData.forEach(item => {
                        const link = document.createElement('a');
                        link.href = item.path;
                        link.textContent = item.title;
                        if (item.path.endsWith('.pdf')) {
                            link.setAttribute('download', '');
                        }
                        modalReportsGrid.appendChild(link);
                    });
                }

                misReportsModal.classList.add('active');
                mainContentWrapper.classList.add('modal-open');
            }

            function closeModal() {
                misReportsModal.classList.remove('active');
                mainContentWrapper.classList.remove('modal-open');
            }

            misReportLinks.forEach(link => {
                link.addEventListener('click', (e) => {
                    e.preventDefault(); // Prevent default link behavior
                    const reportType = link.dataset.reportType;
                    const title = link.textContent;
                    openModal(title, reportType);
                });
            });
            closeModalBtn.addEventListener('click', closeModal);
            misReportsModal.addEventListener('click', (e) => {
                if (e.target === misReportsModal) {
                    closeModal();
                }
            });
        });
    </script>
<script>
    // DPR Calendar Script
    // Indian Government Holidays for 2025
    const dprHolidays = [
        { date: new Date(2025, 0, 26), name: "Republic Day" },
        { date: new Date(2025, 1, 26), name: "Maha Shivaratri" },
        { date: new Date(2025, 2, 14), name: "Holi" },
        { date: new Date(2025, 2, 30), name: "Idul Fitr" },
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

    // Define available DPR files for specific dates
    const dprFiles = {
        '2025-06-02': 'https://drive.google.com/file/d/1fQWwArfsp51pkUZoDfAQzzcWrLL5OOo9/view', // 2 June 2025
        '2025-06-05': 'https://drive.google.com/file/d/18qi-_X7hd0JdO9xiQMz-ksFULOZJCaST/view', // 5 June 2025
        '2025-06-07': 'https://drive.google.com/file/d/1gJcQdU6dA5QDdlS1Ru_RBcbH0dDI6oIr/view', // 7 June 2025
        '2025-06-08': 'https://drive.google.com/file/d/1zILYXD4HHPWO2rIT3smO-qsL97VwdPRG/view', // 8 June 2025
        '2025-06-10': 'https://drive.google.com/file/d/1iASSV-Hx7kt2J9Nb4AerXSe7DJpRd4WU/view', // 10 June 2025
        '2025-06-13': 'https://drive.google.com/file/d/1B47gAD93eTEhcIcaRZzHiUdcgGScnnAp/view', // 13 June 2025
        '2025-06-17': 'https://drive.google.com/file/d/1B47gAD93eTEhcIcaRZzHiUdcgGScnnAp/view', // 17 June 2025
        '2025-06-19': 'https://drive.google.com/file/d/1WAEUtFIE4A9CSmXJ9PW_k4E-FWbZqg6e/view', // 19 June 2025
        '2025-06-20': 'https://drive.google.com/file/d/1Snu6vL3trAg6M2dkzIKjfMYr7XVGwqnV/view', // 20 June 2025
        '2025-06-23': 'https://drive.google.com/file/d/1E_5hSR1nI7xUGPmhdMAuaqSkeKqO0uRH/view'  // 23 June 2025
    };

    const dprToday = new Date();
    let dprCurrentDate = new Date(2025, 2); // Start with March 2025 for DPR calendar

    function generateDPRCalendar() {
        const monthYearElement = document.getElementById("cal-month-year");
        const calendarGridElement = document.getElementById("cal-grid");

        // Clear previous calendar days (keep day names)
        calendarGridElement.innerHTML = `
                <span class="cal-day-names">Sun</span>
                <span class="cal-day-names">Mon</span>
                <span class="cal-day-names">Tue</span>
                <span class="cal-day-names">Wed</span>
                <span class="cal-day-names">Thu</span>
                <span class="cal-day-names">Fri</span>
                <span class="cal-day-names">Sat</span>
            `;

        // Set month and year in header
        const monthNames = [
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        ];
        monthYearElement.textContent = `${monthNames[dprCurrentDate.getMonth()]} ${dprCurrentDate.getFullYear()}`;

        // Get first day of the month and number of days in the month
        const firstDay = new Date(dprCurrentDate.getFullYear(), dprCurrentDate.getMonth(), 1).getDay();
        const daysInMonth = new Date(dprCurrentDate.getFullYear(), dprCurrentDate.getMonth() + 1, 0).getDate();

        // Add empty spans for days before the first day of the month
        for (let i = 0; i < firstDay; i++) {
            calendarGridElement.innerHTML += `<span></span>`;
        }

        // Add days of the month
        for (let day = 1; day <= daysInMonth; day++) {
            const date = new Date(dprCurrentDate.getFullYear(), dprCurrentDate.getMonth(), day);
            let className = "";

            // Check if it's today
            if (
                date.getDate() === dprToday.getDate() &&
                date.getMonth() === dprToday.getMonth() &&
                date.getFullYear() === dprToday.getFullYear()
            ) {
                className = "cal-current-day";
            }

            // Check if it's a holiday
            const holiday = dprHolidays.find(h =>
                h.date.getDate() === day &&
                h.date.getMonth() === dprCurrentDate.getMonth() &&
                h.date.getFullYear() === dprCurrentDate.getFullYear()
            );
            if (holiday) {
                className = className ? `${className} cal-holiday` : "cal-holiday";
            }

            // Check if it's a Saturday or Sunday
            const dayOfWeek = date.getDay();
            if (dayOfWeek === 0) { // Sunday
                className = className ? `${className} cal-sunday` : "cal-sunday";
            } else if (dayOfWeek === 6) { // Saturday
                className = className ? `${className} cal-saturday` : "cal-saturday";
            }

            // Check if DPR file is available for this date
            const dateString = date.toISOString().split('T')[0];
            const hasFile = dprFiles[dateString] !== undefined;

            if (hasFile) {
                className = className ? `${className} cal-clickable` : "cal-clickable";
            }

            calendarGridElement.innerHTML += `<span class="${className}" title="${holiday ? holiday.name : (hasFile ? 'Click to download DPR' : '')}" data-date="${dateString}">${day}</span>`;
        }

        // Add click event listeners to all day spans
        const daySpans = calendarGridElement.querySelectorAll('span:not(.cal-day-names):not(:empty)');
        daySpans.forEach(span => {
            span.addEventListener('click', function () {
                const dateString = this.getAttribute('data-date');
                if (dateString && dprFiles[dateString]) {
                    // Convert Google Drive view link to direct download link
                    const viewUrl = dprFiles[dateString];
                    const match = viewUrl.match(/\/d\/([\w-]+)\//);
                    if (match) {
                        const fileId = match[1];
                        const downloadUrl = `https://drive.google.com/uc?export=download&id=${fileId}`;
                        const a = document.createElement('a');
                        a.href = downloadUrl;
                        a.download = '';
                        document.body.appendChild(a);
                        a.click();
                        document.body.removeChild(a);
                    } else {
                        // fallback: open in new tab if not a Google Drive link
                        window.open(dprFiles[dateString], '_blank');
                    }
                }
            });
        });
    }

    // Navigation buttons
    document.getElementById("cal-prev-month").addEventListener("click", () => {
        dprCurrentDate.setMonth(dprCurrentDate.getMonth() - 1);
        generateDPRCalendar();
    });

    document.getElementById("cal-next-month").addEventListener("click", () => {
        dprCurrentDate.setMonth(dprCurrentDate.getMonth() + 1);
        generateDPRCalendar();
    });

    // Initial DPR calendar generation on DOMContentLoaded
    document.addEventListener('DOMContentLoaded', () => {
        generateDPRCalendar();
    });
</script>
    <script>
        // Populate year dropdown
        const yearSelect = document.getElementById('yearSelect');
        const currentYear = new Date().getFullYear();
        yearSelect.innerHTML = '<option value="">Select Year</option>';
        for (let y = currentYear; y >= currentYear - 5; y--) {
            yearSelect.innerHTML += `<option value="${y}">${y}</option>`;
        }
        // Populate month dropdown
        const monthSelect = document.getElementById('monthSelect');
        const months = [
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
        ];
        monthSelect.innerHTML = '<option value="">Select Month</option>';
        months.forEach((month, index) => {
            monthSelect.innerHTML += `<option value="${index + 1}">${month}</option>`;
        });
        // Download report function
        function downloadReport() {
            const year = yearSelect.value;
            const month = monthSelect.value;
            if (year && month) {
                alert(`Downloading report for ${months[month - 1]}, ${year}`);
                // Replace alert with actual download logic if needed
            } else {
            }
        }
    </script>
   <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    function createCombinedGauge(canvasId, fyValue, targetValue) {
        const canvas = document.getElementById(canvasId);
        const ctx = canvas.getContext('2d');
        const tooltip = document.getElementById('gauge-tooltip');

        // Calculate percentage
        let percentage = (targetValue === 0 || isNaN(targetValue)) ? 0 : (fyValue / targetValue) * 100;
        percentage = Math.min(Math.max(percentage, 0), 100);

        // Update center display
        document.getElementById("percentageText").innerText = `${percentage.toFixed(1)}%`;

        // Gauge angles
        const achievedAngle = (percentage / 100) * 176;
        const remainingAngle = 176 - achievedAngle;
        const markerAngle = 4;

        const dataValues = [achievedAngle, remainingAngle, markerAngle];
        const segmentColors = ['#4CAF50', '#e0e0e0', '#007bff'];

        if (Chart.getChart(canvasId)) Chart.getChart(canvasId).destroy();

        const chart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ['Mon Gross Gen', 'Remaining', 'Target Gen'],
                datasets: [{
                    data: dataValues,
                    backgroundColor: segmentColors,
                    borderWidth: [0, 0, 1],
                    hoverOffset: 4
                }]
            },
            options: {
                responsive: false,
                maintainAspectRatio: false,
                cutout: '80%',
                circumference: 180,
                rotation: -90,
                plugins: {
                    legend: { display: false },
                    tooltip: {
                        enabled: false,
                        external: function (context) {
                            const tooltipModel = context.tooltip;

                            // Reference or create tooltip element
                            let tooltip = document.getElementById('gauge-tooltip');
                            if (!tooltip) {
                                tooltip = document.createElement('div');
                                tooltip.id = 'gauge-tooltip';
                                tooltip.style.position = 'absolute';
                                tooltip.style.background = '#fff';
                                tooltip.style.color = '#333';
                                tooltip.style.padding = '4px 8px';
                                tooltip.style.fontSize = '11px';
                                tooltip.style.borderRadius = '4px';
                                tooltip.style.boxShadow = '0 2px 6px rgba(0,0,0,0.15)';
                                tooltip.style.pointerEvents = 'none';
                                tooltip.style.zIndex = '10';
                                document.body.appendChild(tooltip);
                            }

                            // Hide if no tooltip needed
                            if (tooltipModel.opacity === 0 || !tooltipModel.dataPoints || tooltipModel.dataPoints.length === 0) {
                                tooltip.style.display = 'none';
                                return;
                            }

                            const index = tooltipModel.dataPoints[0].dataIndex;
                            let content = '';
                            if (index === 0) {
                                content = `Mon Gross Gen: ${fyValue.toLocaleString()} MU`;
                            } else if (index === 2) {
                                content = `Target Gen: ${targetValue.toLocaleString()} MU`;
                            } else {
                                tooltip.style.display = 'none';
                                return;
                            }

                            // Display tooltip
                            tooltip.innerHTML = content;
                            tooltip.style.display = 'block';

                            // Position the tooltip
                            const canvas = context.chart.canvas;
                            const canvasRect = canvas.getBoundingClientRect();
                            const x = canvasRect.left + window.pageXOffset + tooltipModel.caretX;
                            const y = canvasRect.top + window.pageYOffset + tooltipModel.caretY - 10;

                            tooltip.style.left = `${x}px`;
                            tooltip.style.top = `${y}px`;



                        }
                    }
                }
            }
        });
    }

    window.onload = () => {
        createCombinedGauge('combinedGauge', 480.1, 636);
    };
</script>



</body>
</html> 
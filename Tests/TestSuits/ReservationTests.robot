*** Settings ***
Documentation   This test suite covers the Reservation functionality.

Resource       ../ReservationTests_res.robot

*** Test Cases ***
Verfiy Reservation Invoice Details
    Open Chrome Browser on Home URL
    Enter Booking Details firstname is Walaa , lastname is Elyammany , Email is Walaa.Elyammany@gmail.com , Address is abcf 1234 , Mobile is 010000917237 and Country is Egypt
    Confirm Booking
    Verify Customer Name is Walaa Elyammany
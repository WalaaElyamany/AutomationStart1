*** Settings ***
Documentation   This resource file exposes functionality from Python as keywords

Resource        ../Resources/Config.robot
Library         ../Travel/PageObjects/GuestReservation.py  GuestReservation.robot

*** Keywords ***
Open ${name} Browser on Home URL
    Open Web Browser    ${name}       ${Home URL}
    Click Search
    Click Details
    click book now
Enter Booking Details firstname is ${fname} , lastname is ${lname} , Email is ${email} , Address is ${Address} , Mobile is ${phone} and Country is ${country}
    Enter First Name   ${fname}
    Enter Last Name   ${lname}
    Enter Email         ${email}
    enter confirm email  ${email}
    enter address  ${Address}
    enter phone  ${phone}
    enter country  ${country}
Confirm Booking
    click confirm booking
Verify Customer Name is ${CustomerName}
    ${Invoice Customer Name}=     Get Customer Name
    should contain  ${Invoice Customer Name}     ${CustomerName}



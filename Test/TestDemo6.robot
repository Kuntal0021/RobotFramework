*** Settings ***
Documentation    This page is for testing

Library    ../Custom Library/Hello World.py
Library    ../Custom Library/shop.py

*** Test Cases ***
Print Hello World Here
    Hello World.print hello world

Print Shop Here
    add items to cart




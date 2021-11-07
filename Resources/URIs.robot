# Updated: Anh Pham(anh.pham@systum.com)
*** Settings ***
Documentation   This file is used to set all the different api paths so they
...             can be used in any test.

*** Variables ***

*** Keywords ***
Setup URIs

  ### Login ###
  Set Global Variable    ${LOGIN_API}                     /web/login

*** Settings *** 
Documentation            A resource file with reusable variables.
Library                  SeleniumLibrary

*** Variables *** 
${BROWSER}                   Chrome
${DELAY}                     0

#Credentials
${VALID_USER}                standard_user
${VALID_PASSWORD}            secret_sauce
${ERROR_USER}                problem_user
${ERROR_PASSWORD}            secret_sauce
${LOCKED_USER}               locked_out_user
${LOCKED_PASSWORD}           secret_sauce

#URL
${BASE_URL}                  https://www.saucedemo.com/
${LOGIN_URL}                 https://www.saucedemo.com/
${WELCOME_URL}               https://www.saucedemo.com/inventory.html
${ALL_URL}                   https://www.saucedemo.com/inventory.html
${ABOUT_URL}                 https://saucelabs.com/
${CART_URL}                  https://www.saucedemo.com/cart.html
${FACEBOOK_URL}              https://www.facebook.com/saucelabs
${LINKEDIN_URL}              https://www.linkedin.com/company/sauce-labs/
${TWITTER_URL}               https://x.com/saucelabs
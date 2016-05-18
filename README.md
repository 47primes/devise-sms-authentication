# SMS Authentication for Devise

SMS authentication strategy for Devise

Overview
---

The SMS strategy eliminates the use of a user-configured username and persisted password for sign-up and sign-in. Rather, each time a user signs using their mobile phone number. A one-time password is then sent to the mobile number via SMS. This password is invalidated immediately after successful sign-in.

Installation
---

Add devise-sms-authentication to the Gemfile in your application and make sure your using Devise version 4.1 or higher

    gem 'devise' '~> 4.1'
    gem 'devise-sms-authentication'

Setup
---

Configuration
---

TODO
---

x example Rails app
x migration for mobile number, otp, and otp timestamp
x initializer copies views to app
- sign up shows mobile number field only
- sign up prompts otp
- SMS otp
- validation nullifies otp

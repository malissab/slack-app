# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby 2.7.4
* Rails 7.0.4.2

* To run this app:

* Fork and clone this repo to your local machine.

* Once the repo is clone, run 'bundle install'

* In the 'slack_notifier.rb' replace the 'channel' and 'username' with your desired channel and username.

* Create a file in the root directory, and add your webhook url to it. ex. SLACK_WEBHOOK = 'your_webhook_url'

* Start the server in the command line by running, 'rails s'

* Use something like POSTMAN, to send the POST request to the endpoint 'http://localhost:3000/alerts' with the parameters 
'content-type application/json'

* Once everything is set up, you will see messages to your slack channel that detects if an email sends spam alert, and also stores that email in the database.

Thank you!


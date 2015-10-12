newrelic-ruby-kata
==================

Using New Relic and Docker, see how many things you can find and fix to make this app perform fast!

Get the Code
------------
Get the code. The code is waiting to be forked on [Github](https://github.com/newrelic/newrelic-ruby-kata)

Configure your account
----------------------

In the config directory, copy the newrelic.env.sample to newrelic.env and edit it to set your license key and optionally a name for the application.

Build the Docker images
-----------------------

Build your application:

    cd newrelic-ruby-kata
    docker-compose build 
    docker-compose run web rake db:create

FIXME restore the app data (this is surely not the best way):

    docker exec -it `docker ps |grep newrelicrubykata_db_1 | cut -f1 -d' '` bash
    pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d newrelic-ruby-kata_development /myapp/public/sample-data.dump

You can check your containers and log in to them using the following:

    docker exec -it `docker ps |grep newrelicrubykata_db_1 | cut -f1 -d' '` bash
    docker exec -it `docker ps |grep newrelicrubykata_web_1 | cut -f1 -d' '` bash

Start your site:

    docker-compose up

Next Steps
----------

Fix the code / Solve as many of the Katas as you can. There are seven distinct Katas in this application that can be torn apart and fixed by using your awesome dev abilities and the deep metrics that New Relic provides.

Learn more
----------
You can watch a [video on getting started](http://newrelic.com/resources/training) with the New Relic agent to help get you started. The New Relic agent will help you find and solve the performance issues in this application as well as help you see the complete impact of your changes.

Feedback
-------
Let us know how you did, what you liked or disliked, what helped you find problems or what were the challenges, what you like about New Relic and what you don't - we just want to hear from you and see what we can do to get better. We'll even send you something for demonstrating your geek super powers when you complete the Kata - just provide us with your [thoughts and a link to your forked repo](https://support.newrelic.com/home).

# README

Richard Jarram, Lailo Web Development
www.lailo.io
solo@lailo.io

1. BACKGROUND
Lailo was contracted by Dharma Taylor to develop a backend control panel for her website; the website was originally built by Heavy London and at the time was purely frontend (Feautured Page, Information Page, Archives page).

There was no readme in the inherited project. This docuement outlines the environment and deployment process of the website to the author's best knowledge.

2. CONTEXT
2.1 DEVELOPMENT ENVIRONMENT
The site uses webpacker to locally compile assets; sprockets has been completely disabled. Puma runs the local server as standard.

2.2 PRODUCTION ENVIRONMENT
The server is hosted on an AWS instance and the site is deployed via Capistrano. Once the source code has been pushed to the master branch on the Bitbucket Repo, executing Capistrano will push these changes to the production environment.
```
```

As stated earlier, there is a bug in the production environment that I have not been able to solve. Once you deploy the site to the server via. capistrano, you have to manually edit the Rails secret key base with the one on the Ubuntu $ENV.
```
```

3. DATABASE SCHEMA
The admin control panel


4. SITE STRUCTURE
4.1 USER AUTHENTICATION
I have used Devise for user authentication. However it does not sit nicely with the VueJs asset pipeline set up in this program. A fuller integration would use Devise via. Axios to create a pure frontend authentication system (https://stephenhowells.net/rails-5-user-registration-with-devise-vue-js-and-axios/). However this is beyond the scope of this particular project, although it would be a welcome addition to the code.

Devise Core Structure:
# /config/initializers/devise.rb
This code sets a different CSS layout template for the Devise pages.
# /views/layouts/devise.html.erb
This is the partial used to render the devise layout.
# controllers/application_controller.rb
Some devise methods, such as user redirect, are called here.
# controllers/registration_controller.rb
The app has been built for single user authentiation. This controller ensure that it is impossible to create more than 1 user at any point in time for the devise model.

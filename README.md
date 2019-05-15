# README

Richard Jarram, Lailo Web Development
www.lailo.io
solo@lailo.io

1. BACKGROUND
Lailo was contracted by Dharma Taylor to develop a backend control panel for her website; the website was originally built by Heavy London and at the time was purely frontend (Feautured Page, Information Page, Archives page).

There was no readme in the inherited project. This docuement outlines the environment and deployment process of the website to the author's best knowledge.

2. DEPLOYMENT
2.1Push the site to the madter branch on BitBucket. Then, execute Capistrano to deploy to production:
```
bundle exec cap production deploy
```

2.2 SSH into the AWS EC2 Instance.
Get the SECRET_KEY_BASE with the following command:
```
printenv
```
Place the secret key in the /config/secrets.yml file.

2.3 Ensure that the database is working correctly: In the worst case, drop the production database and reseed. All the data is included in the seed file.
```
RAILS_ENV=production rake db:drop
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate
RAILS_ENV=production rake db:seed
```

2.3.1 Re-create the Single Admin User by logging into the production console
```
rails c production
User.create!({email: ..., password: ...})
```

2.4 Reboot the Puma server
```
bundle exec cap production puma:restart
```

And Voila!

3. SITE STRUCTURE
3.1 USER AUTHENTICATION
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

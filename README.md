# Contact Details
Richard Jarram, Lailo Web Development.

Website: www.lailo.io
Email address: solo@lailo.io

Feel free to contact me about any questiosn regarding the code.

# Background
Lailo was contracted by Dharma Taylor to develop a backend control panel for her website; the website was originally built by Heavy London. The backend control panel is built using Rails and Vue JS.

# Deployment Details
This document outlines the deployment process of the website.

## i. Deploy Site Using Capistrano
Push the site to the master branch on BitBucket. Then, execute Capistrano to deploy to production with the command:
```
bundle exec cap production deploy
```
This will take the master branch at BitBucket and push it to the server on AWS.

## ii. SSH into the AWS EC2 Instance.
You'll need the AWS .pem to do this. After you're logged in, get the SECRET_KEY_BASE with the following command:
```
printenv
```
Place the secret key in the /config/secrets.yml file.

## iii. Run Database Migrations
Ensure that the database is working correctly: open up the rails production console and check to see if all migrations have run successfully. If not, run the migrations manually as such:

```
RAILS_ENV=production rake db:migrate
```

In the worst case scenario, drop the production database and reseed. All the user data is included in the seed file.
```
RAILS_ENV=production rake db:drop
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate
RAILS_ENV=production rake db:seed
```

If you re-seeded, then you'll need to re-create the admin user. Log into the production console and run the following commands:
```
rails c production
User.create!({email: ..., password: ...})
```

## iv. Reboot the Puma server
```
bundle exec cap production puma:restart
```

And Voila!

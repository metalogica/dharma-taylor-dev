# README

Richard Jarram, Lailo Web Development
www.lailo.io
solo@lailo.io

1. BACKGROUND
Lailo was contracted by Dharma Taylor to develop a backend control panel for her website; the website was originally built by Heavy London. The backend control panel is built using Rails and Vue JS.

There was no readme in the inherited project. This document outlines the deployment process of the website as the author understands it.

2. DEPLOYMENT
i. Push the site to the master branch on BitBucket. Then, execute Capistrano to deploy to production:
```
bundle exec cap production deploy
```

ii. SSH into the AWS EC2 Instance.
Get the SECRET_KEY_BASE with the following command:
```
printenv
```

iii. Place the secret key in the /config/secrets.yml file.
Ensure that the database is working correctly: In the worst case, drop the production database and reseed. All the data is included in the seed file.
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

iv. Reboot the Puma server
```
bundle exec cap production puma:restart
```

And Voila!

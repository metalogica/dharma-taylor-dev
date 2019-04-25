# README

Richard Jarram, Lailo Web Development
www.lailo.io
solo@lailo.io

BACKGROUND
Lailo was contracted by Dharma Taylor to develop a backend control panel for her website; the website was originally built by Heavy London and at the time was purely frontend (Feautured Page, Information Page, Archives page).

I didn't inherit a readme file from Heavy London during the takeover for this project. Neither were any tests written into the environment. Moreover, the latest version of the repository master branch (dated Jan 6th 2019) was out of sync with the live website on the server; I later found out someone updated the website via FTP in Feburary 2019 without pushing these changes to the master branch (the edits concerned changes to the 3JS model  on the homepage). I have integrated the master branch with the live site to resolve this inconsistency. As I final note I'd like to add that the production environment was buggy and required manually editing the secret key base from the Ubuntu ENV to ensure that the rails app loaded in the browser after deployment.

I discovered all of this indepdently through forensic work and trial and error.

I felt that the basic architecture of the site seemed slightly over-engineered for Dharma Taylor's purposes (are you sure a 140mb node package library is needed? Or Even VUE.js?) Neverthless I have decided to stay as consistent with the design principles of the site as the original author developed them. This has led to some inconsistencies in the code which I have not been able to completely resolve due to time constraints. When I've been guilty of 'unclean code' I've clearly commented it in the line. I've summarised all cases here, together with the logic underlying the code to make it easier for the the next developer to understand the site's structure.

CONTEXT
DEVELOPMENT ENVIRONMENT
USER AUTHENTICATION
I have used Devise for user authentication. However it does not sit nicely with the VueJs asset pipeline set up in this program. A fuller integratio would use Devise via. Axios to create a pure frontend authenticaiton system (https://stephenhowells.net/rails-5-user-registration-with-devise-vue-js-and-axios/). However this is beyond the scope of this particualr project, although it would be a welcome addition to the code.

PRODUCTION ENVIRONMENT
The server is hosted on an AWS instance and the site is deployed via Capistrano. Once the source code has been pushed to the master branch on the Bitbucket Repo, executing Capistrano will push these changes to the production environment.
```
```

As stated earlier, there is a bug in the production environment that I have not been able to solve. Once you deploy the site to the server via. capistrano, you hve to manually edit the Rails secret key base with the one on the Ubuntu $ENV.
```
```

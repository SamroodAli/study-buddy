# Study Buddy
An app to track your study sessions with the option to put them in collections for easy access later on. You can also now create notes. This was my rails capstone for the bootcamp Microverse. This was my own first full fledged rails app After Micheal Hartl's Rails tutorial. It is completely responsive, scales well and elegant. The app was made to resemble a web app and the all components are fully customisable. Thanks.

## Deployment
- Heroku Link: [Click here](https://cool-study-buddy.herokuapp.com/)

![Screenshot of the app](./app1.png)
![Screenshot of the app](./app2.png)
![Screenshot of the app](./app3.png)
![Screenshot of the app](./app4.png)
![Screenshot of the app](./app5.png)
![Screenshot of the app](./app6.png)
![Screenshot of the app](./app7.png)
## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/SamroodAli/study-buddy.git
$ cd study-buddy
```
on:
  # Triggers the workflow on push or pull request events but only for the development branch
  push:
    branches: [ development ]
  pull_request:
    branches: [ development ]

Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ bundle install
```

Next, setup webpacker configuration

```
$ rails webpacker:install
```

After that, create and migrate the database:

```
$ rails db:create
$ rails db:migrate
```

To run the project on rails local server:

```
$ rails server
```
## Deploying

you’ll need a Heroku account

To deploy this version of the app, you’ll need to create a new Heroku application, switch to the right branch, push up the source, run the migrations, and seed the database with sample users:

```
$ heroku create
$ git checkout updating-users
$ git push heroku updating-users:master
$ heroku run rails db:migrate
$ heroku run rails db:seed
```

Visiting the URL returned by the original `heroku create` should now show you the sample app running in production. 

## Branches

Simply check out the corresponding branch using `git checkout`:

```
$ git checkout <branch name>
```

## Authors

![Samrood Ali's GitHub stats](https://github-readme-stats.vercel.app/api?username=SamroodAli&count_private=true&theme=dark&show_icons=true)

👤 **Samrood Ali**
- GitHub: [@githubhandle](https://github.com/SamroodAli)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/samrood-ali/)


## Contributions
Design from [Gregoire Vella](https://www.behance.net/gregoirevella)

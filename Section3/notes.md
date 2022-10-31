# Intro 

Ruby on Rails or Rails is a web application development framework that you can use to build web applications.

Rails overview:

https://guides.rubyonrails.org/

https://rubyonrails.org/

https://weblog.rubyonrails.org/

Creator of Rails: David Heinemeier Hansson

https://dhh.dk/

Ruby meetups:

https://www.meetup.com/topics/ruby/

Online code repository hosting services:

https://github.com/

https://bitbucket.org/

Devise gem GitHub repository:

https://github.com/heartcombo/devise

Gems for Ruby and Ruby on Rails:

https://rubygems.org/

# MVC Model View Controller and Rails App Structure 

MVC Pattern - separation of presentation layer (what the user of the application sees in the browers/mobile device) and the business logic or back-end (invisible layer)

**Models** Are resources in your app, User, Post, Article, Stock, etc. Whatever the resources used in the application. Most likely require a persistence or database layer as well. A User model will have a users table, etc. In rails, can use the models to communicate with the tables in the application. 

**Views** Make up the front end of the application. Home, new, friends, my_portfolio. The visible layer in the app. HTML, CSS, JavaScript, etc. HTML with a slight twist, Rails uses erb (embedded ruby) templates. `home.html.erb`, etc. 

**Controller** Invisible to the user, technically fall in the back end. Can think of them as the brains of the application. users_controller, posts_controller, articles_controller, stocks_controller. 

# Model, View, Controller and Rails App Structure - Text References 

MVC - Model, View, Controller

General flow of Rails application:

-> Request made at browser

-> Request received at router of rails application

-> Request routed to appropriate action in a controller

-> Controller#action either renders a view template or communicates with model

-> Model communicates with database

-> Model sends back information to controller

-> Controller renders view

# Root, route, controller, more MVC and say "Hello World"

1. Display "Hellow World! in browser 
2. Formalize Using Rails convention
3. Review MVC diagram for information flow

Need to define a root route within config folder. 

```ruby
# config 
Rails.application.routes.draw do
  root 'application#hello'
end

# application_controller.rb
  def hello 
    render html: 'Hello World!'
  end 
```

Although not quite right, don't want it to show up from within the applicationcontroller. Want to use the erb template files. Want to follow rails conventions to get the same view in our browswer and utilize layout file.

**Conventional Expectations** 
- Define a route that points to a `controller#action` 
- Have an appropriately named controller, for example: if dealing with layouts or static pages of the application, a name could be pages_controller 
- Have an appropriately named action, for example: if dealing with a homepage, the action/method could be named home. 
- If done this way, under views, rails will expect a pages folder (named for the pages controller) and a home.html.erb template (named for the home action).

`rails g controller pages` in the terminal to generate the new controller which will generate files we need.

```ruby
#routes.rb 
Rails.application.routes.draw do
  root 'pages#home'
end

# Pages_controller.rb
class PagesController < ApplicationController

  def home 
  end 
end

# Create a `home.hmtl.erb` file in the views/pages folder and put inside of it
Hello World!

```

MVC Diagram -
User makes a request from frontend browser. Received by a router - sends it to the appropriate action within a controller, and then depending on if the request requires database or model interaction, it'll work with the appropriate model, send info back to the controller, which will then use the appropriate view template to send info back to the users frontend browser. 

# Structure of a Rails Application

App folder - assets. Static images, etc. 
Stylesheets - css. 
Channels - where we work with application cable which make real time communcations available in rails. Like chat applications. 
Controllers - all our controllers will be housed. (all inherit from ApplicationController as subclasses.)
Helpers - helper functions or methods that we'll use in our view templates. Exclusively used with views only. 
JS - packs/application.js - our main js manifest file. Makes js available for use throughout our application. 
Models - store all our models. (Users, Pottery, etc)
Views - All the view files. 

Bin/stubs Not going to worry about that

Config/ configuration for applications will take place here. Most important to keep track of is the `routes.rb` file.

db/ development and test data is held here. (sqlite)

All the files listed below. all the gems we save, get saved in the lock file. 

hidden files. all start with a `.` Don't show up by default. Click on the widget to show hidden files when in a repository. 

You can find the details of the individual folders in a Rails application (when it's created) here: [https://guides.rubyonrails.org/getting_started.html](https://guides.rubyonrails.org/getting_started.html)

Scroll down to section 3.2, skip the part about creating the new application and then you will find a listing of all the folders and their purpose in-depth.

# Version Control with Git

Can go back to a previous version. We start the version control process by tracking the files and folders in the application. When we start tracking is when the initial state of the application witll be. Usually this is done as soon as the application is created. 

When we make changes to our code or add new code/files/folders, etc, we add (if we choose) the new files/folders to track as well. Once we're happy with our new changes, we make a 'commit of our code. 'Commits' include a helpful message as well with information about the code being saved or committed. 

Every time you make a commit. It copies and saves how your app looks at the time of that commit. 

Now, we will have a history of our past commits. And then if necessary, we can 'revert' our changes and go back to an earlier version of our code. 

## References 

Git references:

Official site: https://git-scm.com/

Free online Pro Git book: https://git-scm.com/book/en/v2

Reference manual: https://git-scm.com/docs

Upon download and installation in your local machine (AWS Cloud9 comes pre-installed with Git), first time setup steps are required (only one time) for your git installation (for all environments):

```ruby
git config --global user.name "Your name"
git config --global user.email youremail@example.com
```
replace "Your name" and youremail@example.com above with your actual name and email address which you want shown on your repos.

To display git config settings, use the following command:

`git config --list`

Some useful git commands:

Your rails application already comes initialized with a Git repository. But if you have to initialize a git repository for an application you are working on, you can use the following command (do this from within the application directory):

`git init`

Note: if using Rails 5 or above, your application will already come with a git repository initiated, if you initiate a new one, it'll simply do the same step again.

To add/track all files, use the following command:

`git add -A`

To commit changes/updates/additions to repository, use the following command:

`git commit -m "A useful message to help remember details of commit"`

To check current state of file updates with already tracked/committed code in repo, check git status with the following command:

`git status`

To reject latest changes, you can use the following command:

`git checkout -f`

Sites to create free online code repositories:

github.com

bitbucket.org

# Setup online code repository with Github

You can sign-up for a GitHub account at https://github.com/

Once signed-up, you can follow the steps in the video to create a new repository for your application.

If you chose SSH as the option to push existing repo, you will need to set up an SSH key unless you already have one.

To display your public SSH key:

`cat ~/.ssh/id_rsa.pub`

If you don't have an SSH public key or are not sure, checkout the instructions here: https://help.github.com/en/github/authenticating-to-github/checking-for-existing-ssh-keys

When creating a GitHub repo for your application, you can click on the SSH button, then push existing repo:

`git remote add origin git@github.com:yourgithubaccountname/test-app-6.git`

`git push -u origin master # Remember you only need to use this command the first time`

To view remotes setup in your environment (from your app directory):

`git remote -v`

For future pushes to repository:

`git push origin master`

# Front-end: Learn and practice HTML and CSS
1. Know what HTML tags are: h1 tags, p tags, etc., and the syntax 
2. Know how to style classes and ids using CSS at a basic level.
3. Know the difference between in-line and external CSS used in HTML documents.
4. At a basic level know what forms and tables are and how to create them.
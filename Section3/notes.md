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
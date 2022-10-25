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


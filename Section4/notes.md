# Introduction to Section 4: Tables, migrations and naming conventions

Details
Model name: article

Class name: Article -> Capitalized A and singular, CamelCase

File name: article.rb -> singular and all lowercase, snake_case

Table name: articles -> plural of model name and all lowercase

Additional example:

Model name: user

Class name: User -> Capitalized U and singular, CamelCase

File name: user.rb -> singular and all lowercase, snake_case

Table name: users -> plural of model name

```ruby
rails g migration create_articles
```

Creates the table in the DB, to create Articles. Defining the table for SQL. 

```ruby
class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
    end
  end
end
```

`rails db:migrate`

```
== 20221107185914 CreateArticles: migrating ===================================
-- create_table(:articles)
   -> 0.0011s
== 20221107185914 CreateArticles: migrated (0.0011s) ==========================
```
Creates the schema.rb file. 

Migration file has been run, when we ran `rails db:migrate`. If we run it again, nothing happens because nothing new, or no new migration files to be run. Even if we wanted to change something in the migration file and have the description field, think you could go into the file, add the field name. But that won't work. Need to do the add column to... 

Would have to do a rollback, and re-run the migration again. Not the preferred way to do it. 

`rails db:rollback` will undo last migration. 

Not the preferred way because you're likely to work with multiple team members and share code repositories. Migrations run on their machines. If another team member downloads the latest changes to the code, and it includes an update like this, where you went to a prior migration. When they run the new code, that change will not be reflected in their DB. So the code bases will be out of sync. 

Instead, always want to create a new migration file, to impact any changes to the db. So when the teammates go to the new code, they'll have it there when they run rails migrate in their system. Want to add `t.timestamps` so need to create a new migration file. 

`rails g migration add_timestamps_to_articles`

```ruby
class AddTimestampsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
```
Then run `rails db:migrate`

```ruby
ActiveRecord::Schema[7.0].define(version: 2022_11_07_190926) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

```

# Models and Rails Console

In the models folder, need to create Article model. Inherits from ApplicationRecord

```ruby 
class Article < ApplicationRecord 
end 
```

All that's needed to get a barebones model to communicate with the database. Gets us getters and setters so we can communicate and create in the Rails console. 

`rails c` from the terminal or command line or `rails console`

rails console 
```ruby 
 Article.create(title: "first article", description: "description of
 first article")
                                                       
Article.all 

                                                      
article 
 => 
#<Article:0x00007fe1a951ec70                                             
 id: nil,                                                                
 title: nil,                                                             
 description: nil,                                                       
 created_at: nil,                                                        
 updated_at: nil>                                                        
article.title = "Second article"
 => "Second article" 
article.description = "description of second article"
 => "description of second article" 
3.0.0 :008 > article 
 => 
#<Article:0x00007fe1a951ec70                                                    
 id: nil,                                                                       
 title: "Second article",                                                       
 description: "description of second article",                                  
 created_at: nil,                                                               
 updated_at: nil>                                                               
                                            
3.0.0 :013 > article.save 
  TRANSACTION (0.1ms)  begin transaction
  Article Create (1.5ms)  INSERT INTO "articles" ("title", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "Second article"], ["description", "description of second article"], ["created_at", "2022-11-08 19:40:29.146837"], ["updated_at", "2022-11-08 19:40:29.146837"]]         
  TRANSACTION (0.9ms)  commit transaction                      
 => true                                                       
3.0.0 :014 > Article.all 
  Article Load (0.3ms)  SELECT "articles".* FROM "articles"
 =>                                                            
[#<Article:0x00007fe1a8916ec8                                  
  id: 1,                                                       
  title: "first article",                                      
  description: "description of first article",                 
  created_at: Tue, 08 Nov 2022 19:34:23.350258000 UTC +00:00,  
  updated_at: Tue, 08 Nov 2022 19:34:23.350258000 UTC +00:00>, 
 #<Article:0x00007fe1a8916e00                                  
  id: 2,                                                       
  title: "Second article",                                     
  description: "description of second article",                
  created_at: Tue, 08 Nov 2022 19:40:29.146837000 UTC +00:00,  
  updated_at: Tue, 08 Nov 2022 19:40:29.146837000 UTC +00:00>] 
3.0.0 :015 > 

article = Article.new(title: "Snoopy", description: "Snoopy is amaz
ing") 
```

```ruby
Article.create(title: "first article", description: "Description of first article") # make sure Article is capitalized if using this method
article = Article.new
article.title = "second article"
article.description = "description of second article"
article.save
article = Article.new(title: "third article", description: "description of third article")
article.save
```

# CRUD Operations from the Rails console 

- Read 
- Update 
- Delete 


`Ctrl + L` clears the console. 

```ruby 
# To Read 
Article.find(2) # by the id 

Article.first 
Article.last

# setting the article object to a variable 
article = Article.find(2)
articles = Article.all 

article.title # "second article" 
article.description # "description of second article"

# To Update 
article.description = "edited - description of second article"
article.save # this way it will hit the datatabse

# To Delete
article.destroy # this hits the database right away, no need to save it. 

```

# Validations 

```ruby 
class Article < ApplicationRecord 
  validates :title, presence: true 
  validates :description, presence: true 
end 

# rails console 
article = Article.new 
 => 
#<Article:0x00007fee40cf1990                                             
...                                                                      
3.0.0 :002 > article.save 
 => false 
3.0.0 :003 > article.errors.full_messages 
 => ["Title can't be blank", "Description can't be blank"] 
3.0.0 :004 > 
```

To avoid issues of titles or descriptions being too short, can add minimum and maximum length of characters 

```ruby 
class Article < ApplicationRecord 
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 300 }
end 

# rails console
reload! # Will reload without having to stop and start the console once changes are made
```

# Show articles (route, action, view)

Add resources to routes to get all routes we want for articles (show, edit, index, etc)
```ruby
Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  resources :articles, only: [:show]
end
```

Then need to create `ArticlesController` with proper methods 
```ruby 
class ArticlesController < ApplicationController 
  
  def show 
  end
end 

# Then create articles folder in views and show.html.erb
<h1>Showing article details</h1>
```

Then have to put proper show method in, using an instance method. 

```ruby
 def show 
    # instance variable so it's available within the view
    @article = Article.find(params[:id])
 end 

# then update the view 
<h1>Showing article details</h1>

# embedded ruby tags
<p><strong>Title:</strong> <%= @article.title %></p>
<p><strong>Description:</strong> <%= @article.description%></p>
```

Using `byebug` stick it into the model, it'll stop the server and drop into debugger in the console. Except byebug has been deprecated and replaced by `debug`. insert `debugger` to get it up and running in the controller. `continue` gets you to get out of debugger when in the console after you've fiddled around with the params to your liking. 

# Articles Index 

`rails routes --expanded` will show in console updated routes. 

```ruby 
# added :index to routes for articles. 
  resources :articles, only: [:show, :index]

# added index method in articles controller
 def index 
    @articles = Article.all 
  end 

# added index.html.erb in views
<h1>Articles listing page</h1>

<table> 
  <thead>
    <tr>
      <th>Title</th>
      <th>Description</th>
      <th>Actions</th>
    </tr>
  </thead>
  <tbody>
    <% @articles.each do |article| %> 
    <tr>
      <td><%= article.title %></td>
      <td><%=</td>
      <td>Placeholder</td>
    </tr>
    <% end %> 
  </tbody>
</table> 
```

# Forms: Build a new article creation form 

```ruby
# Added proper routes to build out create form
resources :articles, only: [:show, :index, :new, :create]

# in the controller create a new and create method
  def new 
  end 

  def create 
  end 

# then a new.html.erb view 
```
Use form  helpers

# Create Action: Save newly created articles 

strong params for saving an article on create
```ruby
   def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect
    @article.save 
    # redirect_to article_path(@article)
    # shortened path 
    redirect_to @article 
  end 
```

# Messaging - validation and Flash Messagess

```ruby 
  def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save 
      redirect_to @article 
    else 
    # to avoid error in new Rails version 
      render :new, status: :unprocessable_entity
    end 
  end 

# within the index html 
<% if @article.errors.any? %> 
  <h2>The following errors prevented the article from being saved</h2> 
  <ul>
    <% @article.errors.full_messages.each do |msg| %> 
      <li><%= msg %></li>
    <% end %>
  </ul> 
<% end %> 

# and need this in controller so won't render with an error the first time .
  def new 
    @article = Article.new 
  end 

```

To add flash message

```ruby 
  def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save 
      flash[:notice] = "Article was created successfully."
      redirect_to @article 
    else 
      render :new, status: :unprocessable_entity
    end 
  end 

# application.html.erb: 
 <body>
    <% flash.each do |name, msg| %>
      <%= msg %> 
    <% end %>  
    <%= yield %>
  </body>
```

# Edit and update: update existing articles 

```ruby 
# routes 
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]

# controller 
def edit 
  @article = Article.find(params[:id])
end 

def update 
  @article = Article.find(params[:id])
  if @article.update(params.require(:article).permit(:title, :description))
    flash[:notice] = "Article was updated successfully."
    redirect_to @article
  else 
    render 'edit'
  end 
end 

# edit.html.erb
<h1>Edit an Article</h1>

<% if @article.errors.any? %> 
  <h2>The following errors prevented the article from being saved</h2> 
  <ul>
    <% @article.errors.full_messages.each do |msg| %> 
      <li><%= msg %></li>
    <% end %>
  </ul> 
<% end %> 

# have to update this bit from new to display existing article
<%= form_with(model: @article, local: true)  do |f| %>
  <p>
    <%= f.label :title %></br>
    <%= f.text_field :title %>
  </p>

  <p>
    <%= f.label :description %></br>
    <%= f.text_area :description %>
  </p>

  <p>
    <%= f.submit %> 
  </p>
<% end %> 
```

# Delete: delete articles

RESTful routes - representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions

resources provide REST-ful routes to Rails resources
```ruby 
resources :articles # exposed all the RESTful routes.

# application controller 
  def destroy 
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

# index.html.erb
      <td><%= article.title %></td>
      <td><%= article.description %></td>
      <td><%= link_to 'Show', article_path(article) %></td>
      <td><%= button_to 'Delete', article_path(article), method: :delete %></td>
      <td><%= link_to 'Delete', article_path(article), data: { "turbo-method": :delete } %></td>
    # He uses link_to which does not work, but does with the data: { "turbo-method": delete}
```

# User Interface - Add Layout Links

```ruby
#index.html.erb
<td><%= link_to 'Edit', edit_article_path(article) %></td>

# to have it span 3 columns
<th colspan="3">Actions</th>

<%= link_to 'Create new article', new_article_path %>

# show page
<%= link_to 'Edit', edit_article_path(@article) %> | 
# can't get pop up link_to to work to confirm before deletion.
<%= link_to 'Delete', article_path(@article), data: { "turbo-method": :delete } %> |
<%= link_to 'Return to articles listing', articles_path %>
```
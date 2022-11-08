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
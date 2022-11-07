# Introduction to Section 4: Tables, migrations and naming conventions

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
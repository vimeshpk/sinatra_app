💎 About Sinatra

Sinatra is a DSL (Domain Specific Language) for quickly building web applications in Ruby.

It’s lighter and simpler than Ruby on Rails.

Perfect for small apps, microservices, or APIs where Rails would be “too heavy.”

⚙️ Steps to Create and Execute a Sinatra App
# 1️⃣ Create a new project folder
mkdir sinatra_app

# 2️⃣ Move into the project directory
cd sinatra_app

# 3️⃣ Create basic folder structure
mkdir models controllers views db public

# models       → For database models
# controllers  → For logic and routes (optional for large apps)
# views        → For HTML/ERB templates
# db           → For migrations or seeds
# public       → For static files (CSS, JS, images)

# 4️⃣ Create main app and config files
touch app.rb config.ru Gemfile

# app.rb       → Main Sinatra application file
# config.ru    → Rack configuration file to start the server
# Gemfile      → To list and manage dependencies

# 5️⃣ Add gems to Gemfile (open Gemfile and add)
# Example content:
# source 'https://rubygems.org'
# gem 'sinatra'
# gem 'sinatra-contrib'
# gem 'activerecord'
# gem 'rake'
# gem 'sqlite3'

# 6️⃣ Install required gems
bundle install

# 7️⃣ Create a database migration (if using ActiveRecord)
bundle exec rake db:create_migration NAME=create_users

# 8️⃣ Apply migrations
bundle exec rake db:migrate

# 9️⃣ Install Sinatra globally (optional if not in Gemfile)
gem install sinatra sinatra-contrib

# 🔟 Start the Sinatra app on port 4567
rackup -p 4567

🧩 Example: Minimal app.rb
require 'sinatra'

# Simple route
get '/' do
  "Hello, Sinatra!"
end


Run it with:

ruby app.rb


Then open your browser and visit:
👉 http://localhost:4567

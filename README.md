# 💎 About Sinatra

**Sinatra** is a DSL (Domain Specific Language) for quickly building web applications in **Ruby**.
It’s lighter and simpler than **Ruby on Rails**, making it perfect for:

* 🧩 Small applications
* ⚙️ Microservices
* 🌐 APIs where Rails would be “too heavy”

---

## ⚙️ Steps to Create and Execute a Sinatra App

### 1️⃣ Create a new project folder

```bash
mkdir sinatra_app
```

### 2️⃣ Move into the project directory

```bash
cd sinatra_app
```

### 3️⃣ Create basic folder structure

```bash
mkdir models controllers views db public
```

**Purpose of folders:**

* **models/** → For database models
* **controllers/** → For logic and routes (optional for large apps)
* **views/** → For HTML/ERB templates
* **db/** → For migrations or seeds
* **public/** → For static files (CSS, JS, images)

---

### 4️⃣ Create main app and config files

```bash
touch app.rb config.ru Gemfile
```

**File roles:**

* `app.rb` → Main Sinatra application file
* `config.ru` → Rack configuration file to start the server
* `Gemfile` → To list and manage dependencies

---

### 5️⃣ Add gems to `Gemfile`

Example content:

```ruby
source 'https://rubygems.org'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'activerecord'
gem 'rake'
gem 'sqlite3'
```

---

### 6️⃣ Install required gems

```bash
bundle install
```

---

### 7️⃣ Create a database migration (if using ActiveRecord)

```bash
bundle exec rake db:create_migration NAME=create_users
```

---

### 8️⃣ Apply migrations

```bash
bundle exec rake db:migrate
```

---

### 9️⃣ Install Sinatra globally (optional if not in Gemfile)

```bash
gem install sinatra sinatra-contrib
```

---

### 🔟 Start the Sinatra app on port 4567

```bash
rackup -p 4567
```

---

## 🧩 Example: Minimal `app.rb`

```ruby
require 'sinatra'

# Simple route
get '/' do
  "Hello, Sinatra!"
end
```

---

### ▶️ Run the App

```bash
ruby app.rb
```

Visit: [http://localhost:4567](http://localhost:4567) 🌐

Sinatra

  It's a DSL (Domain Specific Language) for quickly building web applications in Ruby.
  
  It’s lighter and simpler than Rails.
  
  Perfect for small apps, APIs, or services where Rails would be “too heavy.”

  
Comments to Create and execute sinatra app

    mkdir sinatra_app
    
    cd sinatra_app
    
    mkdir models controllers views db public
    
    touch app.rb config.ru Gemfile
    
    bundle exec rake db:create_migration NAME=create_users
    
    bundle exec rake db:migrate
    
    gem install sinatra sinatra-contrib
    
    rackup -p 4567

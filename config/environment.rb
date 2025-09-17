require 'bundler/setup'
Bundler.require

# Load all controllers and models
Dir[File.join(File.dirname(__FILE__), "../controllers", "*.rb")].each { |f| require f }
Dir[File.join(File.dirname(__FILE__), "../models", "*.rb")].each { |f| require f }

set :database, { adapter: "sqlite3", database: "db/development.sqlite3" }


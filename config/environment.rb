require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
adapter: 'sqlite3',
database: 'db/development.db'
)
ActiveRecord::Base.logger = nil #to stop showing SQL query statements

require_all 'lib'

#gem install giphy

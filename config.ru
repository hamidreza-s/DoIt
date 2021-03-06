# bundler
require 'bundler'
Bundler.require

# datamapper init
DataMapper::setup(:default, ENV['DATABASE_URL'] || "mysql://root:i181MYSQL@localhost/ireminder")

# loader
require './loader.rb'

# datamaper finalize
DataMapper.finalize.auto_upgrade!

# maps and run
map('/')      { run Controllers::Main }
map('/note')  { run Controllers::Note }
map('/user')  { run Controllers::User }

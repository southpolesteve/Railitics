require 'mongoid'

Mongoid.configure do |config|
    name = "dummy_development"
    host = "localhost"
    config.master = Mongo::Connection.new.db(name)
end
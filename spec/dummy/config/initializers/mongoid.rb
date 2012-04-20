require 'mongoid'

Mongoid.configure do |config|
    name = "dummy_#{Rails.env}"
    host = "localhost"
    config.master = Mongo::Connection.new.db(name)
end
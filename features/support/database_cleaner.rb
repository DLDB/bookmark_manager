ENV['RACK_ENV'] = 'test'

# begin

  require 'database_cleaner'
  require 'database_cleaner/cucumber'
  # require './server'



# rescue NameError
#   raise "THERE HAS BEEN AN ERROR"
# end


Before do
      DatabaseCleaner.strategy = :truncation
	DatabaseCleaner.start
end

After do |scenario|
	DatabaseCleaner.clean
end


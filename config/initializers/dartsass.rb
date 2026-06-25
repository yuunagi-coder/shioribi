# config/initializers/dartsass.rb
Dartsass::Rails.configure do |config|
  config.load_paths << Rails.root.join("node_modules")
end
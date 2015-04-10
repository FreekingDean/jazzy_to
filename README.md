[![Gem Version](https://badge.fury.io/rb/jazzy_to.svg)](http://badge.fury.io/rb/jazzy_to)
# jazzy-to
![Jazzy](http://mobilityscootersdir.com/img-big/80.jpg)
##Jazzing content into your rails app.


Add to your gem file
`gem 'jazzy_to'`

install
`rails g jazzy_to:install`

configure
in `config/initializers/jazzy_to.rb`
```ruby
JazzyTo.configure do |config|
  config.autotag[:namespace, :controller, :action, :name]
  # I reccomend using at least name
  config.editor_check = "User.find(session[:user_id]).admin?"
  # You can also do config.editor_check = "true" if you dont care about who can edit it
end
```

migrate
`rake db:migrate`

use
`<%= jazzy_to(:optional_name) %>`

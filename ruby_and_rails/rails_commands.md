# Rails Commands

## Important commands

- print routes & paths of application
```bash
rails routes
# check specific route based on prefix
rails routes | grep _new
```

- console to crash test models
```bash
rails c
# console to test models without affecting the db
rails c --sandbox
```

## Starting a local server

When you run `rails server` all dependencies/gems required by your Rails app are auto-loaded<br>
This is sometimes called "booting" or loading the "Rails environment"

It starts a web server named **WebRick**, which is a piece of ruby code which binds itself to a port on your computer and starts listening to incoming HTTPS requests
When these requests come in:
- the server takes care of the lower-level stuff like reading HTTP headers 
- and rails takes care of figuring out what controller and action to route the request to (using your `routes.rb` file)<br> 

The component of rails that does this work is called `action_dispatch` (`actionpack gem`)

- start a local server
```bash
# 3000 is the default port
rails server
rails s
# to specify a different port
rails s -p 4000
```

## Install gems

> Installing gems in `sudo` will install it in the root (for all users) - Not recommended!<br>
> It gives access to your computer to possible malicious code

```bash
# install the dependencies specified in your Gemfile
bundle install

# show what gems are installed
gem list  
# get info about the path where the gem is installed                  
gem info <gem_name> 
# uninstall a specific gem     
gem uninstall <gem_name>
```

## Rails db tasks

```bash
# drop the database (delete all data)
rails db:drop
# drop the database + create tables found on schema              
rails db:reset             
# create a db with empty schema
rails db:create            
# run pending migrations on db schema
rails db:migrate           
# seed the db
rails db:seed              
# revert last migration
rails db:rollback          
```

## Rails Models

```bash
# generate migration file to create a table / model
rails g model Restaurant name:string           
# generate model with 1:N relationship / foreign key
rails g model Review restaurant:references     

# generate a migration to make a change to a model
rails g migration AddAddressToRestaurants
  add_column :table, :column, :data-type
  change_column
  remove_column
  rename_column
  add_reference
```

## Rails Controllers

```bash
# generate a controller
rails g controller restaurants
```

## Routes

- Rails routes display:
1. prefix (rails path prefix of the associated route)
2. verb (HTTP verb of the route)
3. URL pattern (path to the route)
4. Controller#Action (targeted controller and method)

```ruby
root to: 'pages#home'

get 'restaurants', to: 'restaurants#index'
get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

get 'about', to 'pages#about'

resources :brands, only: [:index, :show] do
  resources :products, only: [:index, :show]
end
```

## 7 CRUD actions

| index | show | new | create | edit | update | destroy |
| ----- | ---- | --- | ------ | ---- | ------ | ------- |
| GET   | GET  | GET | POST   | GET  | PATCH  | DELETE  |


## HTTP - Hypertext Transfer Protocol

### VERB

| REST pattern     | CRUD pattern (used to speak with db) |
| :---             | :----                                | 
| GET              | Read                                 | 
| POST             | Create                               | 
| PATCH            | Update                               |
| DELETE           | Delete                               |

### URL

| scheme  |      |   damin name / host |   path   | query string  |
| --------| ---- | ------------------- | -------- | ------------- |
| http    | ://  |  www.google.com/    |  search? | q=wagon&hl=en |

### Headers

browser > inspect > network > headers

### Body

- With a `GET` request, there is no body (just request info - URL + Headers)
- With `POST` and `PATCH` requests, we have a body (usually with content from a form)
- JSON with keys and values

## Tags

```bash
# write ruby code
<% %>
er + tab         
# write ruby code and inject output in HTML
<%= %> 
pe + tab         
# link tag
<%= link_to 'about', about_path %> 
it + tab

# partial file and render tag
_form.html.erb
<%= render 'form', restaurtant: @restaurant %>
```

## Rails encripted keys
`config/credentials.yml.enc`

```bash
# run in the terminal to open the file
EDITOR=VIM rails credetials:edit    
# insert
i                     
esc
# save and exit
:wq                   
# force quit (without saving)
q!                                  

# how to use it:
Rails.application.credentials.postmark[:postmark_api_token]
# deploy it:
heroku config:set Rails_MASTER_KEY="xxxxxx"
```

## Rails .env file

```ruby
gem 'dotenv-rails', groups: [:development, :test]
bundle install
```

```bash
touch .env
echo .env* >> .gitignore
```
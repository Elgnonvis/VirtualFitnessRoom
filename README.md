# README

## Development Lnaguage

* Ruby 3.0.2
* Rails 6.1.4


## Execution Procedure

```bash
$ git clone 
$ cd 
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails s
```

## Deploy to Heroku

```bash
$ heroku create Appname
$ rails assets:precompile RAILS_ENV=production
$ git add .
$ git commit -am "init"
$ heroku buildpacks:add heroku/ruby
$ heroku buildpacks:add --index 1 heroku/nodejs
$ git push heroku master
$ heroku open
$ heroku logs -t
```
rails new VirtualFitnessRoom -d postgresql --webpack=vue

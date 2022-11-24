# Jungle

A mini e-commerce application built with Rails 6.1. In this application, a client can register/login to their account. They can add plants to their cart and checkout using their credit card. An admin can create categories and products after he enters HTTP auth login.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- ruby 3.1
- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Puma 5.0
- Webpacke
- Bcrypt
- Rspec-rails
- Cypress-rails

# Screenshots

### Home page

![Component Flow](https://github.com/lining04111223/jungle-rails/tree/master/Home_page.png?raw=true)

### Admin_page

![Component Flow](https://github.com/lining04111223/jungle-rails/tree/master/Admin_page.png?raw=true)

### Checkout_page

![Component Flow](https://github.com/lining04111223/jungle-rails/tree/master/Checkout_page.png?raw=true)

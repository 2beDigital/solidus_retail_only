# SolidusRetailOnly

Split Solidus shop into B2C and B2B products by a "retail" user-role.

Creates a "retail" user-role and a flag on all products. 
Retail users will only see retail products and non-retail users will not see the retail products.

## Installation

Add solidus_retail_only to your Gemfile:

```ruby
gem 'solidus_retail_only', git: 'https://github.com/2bedigital/solidus_retail_only', branch: 'master'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_retail_only:install
```

Copyright (c) 2013 Træls, released under the New BSD License

Adapted by 2bedigital from Spree to Solidus


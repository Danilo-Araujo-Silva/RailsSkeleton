# Rails Skeleton

A skeleton propostal to Ruby on Rails applications.

In this skeleton we have:
- Ruby on Rails 5
- TypeScript instead of CoffeeScript (already configured and ready to use)
- HTML5 Boilerplate best practices already included (TODO yet)
- A great improvement in the `application.html.erb`
  (with the option to overrides several sections of the page
  and not the body only) (TODO yet)

## Installation

### Simple Installation
- git clone https://github.com/Danilo-Araujo-Silva/RailsSkeleton.git
- cd RailsSkeleton
- bundle install
- npm install

### Detailed Installation
If you have Ruby, Rails, NPM and NodeJS already installed
you probably can jump to the next section.

#### Install Latest Ruby
If you don't have the latest ruby yet you can install it using rvm.
The official documentation is [here](https://rvm.io/).

- Add rvm keys:
  - gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
- Install rvm:
  - \curl -sSL https://get.rvm.io | bash
- Install the latest ruby:
  - rvm install ruby --latest
  
#### Install Latest Rails
If you don't have rails yet you can install it as follows:

- gem install rails
  
#### Update All Gems
If would like to update all your gems first you can do it as follows:

- gem update

### Install NodeJS
If you don't have NodeJS and NPM installed yet you can follow
[these instructions](https://nodejs.org/en/download/package-manager/) in the
official documentation.

#### Install Latest NPM
If you already have npm installed and you would like update it to the latest
version you can do it as follows:

- npm install npm@latest -g

#### Install Latest NodeJS
If you already have npm installed and you would like to update the NodeJS to the
latest version you can do it as follows:

- sudo npm cache clean -f
- sudo npm install -g n
- sudo n stable

Important! The option `-f` is used to force clean the npm cache. Take care about it.
Anyway, I usually do this when I would like to install the latest NodeJS.

#### Install NPM Dependencies:
These instructions is used to install the local npm dependencies. The dependencies
will be placed in the `node_modules` folder (already ignored by `.gititnore`).

- npm install
  
#### Install Some Global NPM Dependencias:
If you would like to have the typescript dependencies installed globally you
can do this as follows:

- npm install -g @types/node typescript
   - Maybe `sudo` is needed to run the previous command.
   
## Usage

### Development Mode
- guard
  - Run this command in one terminal (this enable the capability to auto-reload
  the browser when have have file changes)
- bin/rails server
  - Run this in another terminal

### Production Mode
- RAILS_ENV=production bin/rake secret
 - This secret will be used in the following steps.
- RAILS_ENV=production bin/rake assets:clean
- RAILS_ENV=production bin/rake assets:precompile
- RAILS_ENV=production RAILS_SERVE_STATIC_FILES=true SECRET_KEY_BASE={secret key} bin/rails server

<!---
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
-->
# Sosial!

Sosial is an open source platform for creating photo-sharing site that allows its users to share pictures on the app, as well as through a variety of other social networking platforms, such as Facebook, Twitter, Tumblr, and etc.
It's a instagram-like app :)

![Sosial! Screenshot](https://raw.githubusercontent.com/omkz/sosial/main/public/screenshot.png)

## Tech Stack

- Ruby 3.3.0
- Ruby on Rails 7.x
- PostgreSQL 12.x
- Tailwind CSS 3.X
- Daisy UI 4.x.x
- Hotwire

- Gem:
    -  [devise](https://github.com/plataformatec/devise) | Authentication
    -  [pg](https://github.com/ged/ruby-pg) | PostgreSQL library for Ruby

## Installation

### Requirements

Before you get started, the following needs to be installed:
* **Ruby**. Version 3.3.0 is currently used and I don't guarantee everything works with other versions. If you need multiple versions of Ruby, [rbenv](https://rbenv.org) is recommended.
* [**RubyGems**](http://rubygems.org/)
* **Bundler**: `gem install bundler`
* [**Git**](http://help.github.com/git-installation-redirect)
* **A database**. Only PostgreSQL 12.15 has been tested, so we give no guarantees that other databases (e.g. MySQL) work. If you're using OS X and have Homebrew installed, install it with `brew install postgresql`

### Setting up the development environment

1. Get the code. Clone this git repository:

  ```bash
  git clone git://github.com/omkz/sosial.git
  cd sosial
  ```

2. Install the required gems by running the following command in the project root directory:

  ```bash
  bundle install
  ```

3. Setup the database:

  ```bash
  bundle exec rails db:setup
  ```

4. Start the development server:

  ```bash
  bin/dev
  ```

## If you want to contribute

The best way to contribute is to do one of the following :
* Creating tests
* Refactoring
* Coding features
* Correcting logged issues
* Correcting my English! (I'm an Indonesian, so don't hesitate to fix my sentences or whole paragraphs.)

## License

Sosial is open source under the MIT license. See [LICENSE](LICENSE) for details.
# Paris::Components

Package of komponents, proof of concept.

## Installation

Add the NPM package to your application:

```shell
yarn add paris-components-poc
```

Alternatively you can install from a local directory:

```shell
yarn add file:../components-poc
```

Add the included gem in your `Gemfile`:

```ruby
gem 'paris-components', path: 'node_modules/paris-components-poc'
```

And then execute:

    $ bundle

Add this to your `config/webpacker.yml`:

```
  resolved_paths:
    - node_modules/paris-components-poc/frontend
```

## Usage

In your view render a component with:

    <%= component "paris/download_button", href: "http://example.com" %>

## Development

To work on the package you must include in a Rails app using the `file:` form. Each time you make changes to the package you must update it from your Rails app with `yarn upgrade paris-components-poc` and restart your Rails app.


To add a component:

* generate the component in a Rails app
* move the component's directory into the `frontend/components` directory of this package
* add its import in `frontend/components/paris/index.js`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sigmike/paris-components. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Paris::Components project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sigmike/paris-components/blob/master/CODE_OF_CONDUCT.md).

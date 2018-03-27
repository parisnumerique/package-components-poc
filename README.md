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

And either load all the Javascript of the components from `frontend/components/index.js`:

    import "components/paris";

Or only the components you use. For example:

    import "components/paris/download_button/paris_download_button.js";

## Usage

In your view render a component with:

    <%= component "paris/download_button", href: "http://example.com" %>

## SCSS variables

To change the SCSS variables, copy `paris_components_variables.scss` into your Rails app to override it:

    $ cp node_modules/paris-components-poc/frontend/components/paris_components_variables.scss frontend/components/

And modify it.

## Replacing a component

If you want to override a component, copy it entierly into your Rails app. For example:

    $ mkdir frontend/components/paris
    $ cp -r node_modules/paris-components-poc/frontend/components/paris/download_button/ frontend/components/paris/

And modify the local files.

## Development

To work on the package you must include in a Rails app using the `file:` form. Each time you make changes to the package you must update it from your Rails app with `yarn upgrade paris-components-poc` and restart your Rails app.


To add a component:

* generate the component in a Rails app
* move the component's directory into the `frontend/components` directory of this package
* add its import in `frontend/components/paris/index.js`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://git.etaminstud.io/paris/components-poc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Paris::Components project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://git.etaminstud.io/paris/components-poc/blob/master/CODE_OF_CONDUCT.md).

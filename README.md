# TTY::UI

### NOTE: this gem is currently work in progress and is not ready for prime time.

This gem is built atop of a super userful collection of [TTY gems by Piotr Murach](https://ttytoolkit.org/).

The UI assembles a collection of primitives that one might want to use while building TTY-based applications.

For instance, while `tty-box` can create beautiful ASCII boxes with properly aligned text, the number of possible arguments is long, and so sometimes you might want to use simple primitives, while keeping the ability to customize them.

The following primitives will be provided by `tty-ui` (all methods are available as eg, `TTY::UI.method` or by including `TTY::UI` in the current context.

### Features

#### Shadow 

You can globally turn on shadow display for all boxes, by calling `TTY::UI.shadowed(true)`. 

#### Log-like Primitives

 * `success(text, **opts)` — a green success box
 * `info(text, **opts)` — a blue information box
 * `warning(text, **opts)` — a yellow warning box
 * `error(text, **opts)` — a red box with an error
 * `debug(text, **opts)` — debugging box that can be globally disabled

#### HTML-like Primitives
 
 * `h1(text, **opts)` — a large font header
 * `h2(text, **opts)` — a smaller large font header
 * `hr(color)` — a horizontal rule
 * `ul(text, indent: 4)` — auto-format bulleted text to fit window
 * `ol(text, indent: 4)` — auto-format numbered list to fix the window

#### Text Formatting Primitives
 
 * `autowrap(text, left: 4)` — auto-wrap and auto-indent a paragraph and resize it to window

 * `report_error(exception, title:, trace:, inspect:, ...)` — customizable way to display a caught error, while optionally displaying a full stacktrace, and more.

Cursor movement extensions

 * `draw_and_return(delta_x:, delta_y:) { yield } ` — use block syntax to draw something in another part of the scren and return to where you were. Great for displaying additional details while also showing a progress bar, for instance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tty-ui'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tty-ui

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/kigster/tty-ui](https://github.com/kigster/tty-ui).

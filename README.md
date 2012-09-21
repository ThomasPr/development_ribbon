# DevelopmentRibbon

This gem shows a nice ribbon at the top corner of your page to indicate that you are using the development environment.
The design is mostly based on the design of [Jeff Balogh](https://github.com/jbalogh/ribbons).


## Installation

Add this line to your application's Gemfile:

    gem 'development_ribbon', group: :development

And then execute:

    $ bundle

Load the stylesheet by adding it to your application.html.erb.

    <%= stylesheet_link_tag "development_ribbon" if Rails.env.development? %>


## Usage
    
Use the provided helper anywhere in your views to show your development ribbon:

    <%= development_ribbon %>
    
I suggest you to place this helper directly after the body tag in your layout file.


### Customisation

You can provide a few options to the helper to style your ribbon. 

    <%= development_ribbon position: :left, color: :green, text: "dev env" %>
    
This shows your ribbon on the top left corner on your page with green background and displaying the text "dev env".

All possible options are:

- position: left, right
- color: white, red, green, darkblue, orange, gray
- text: any text you want

Furthermore you can show the ribbon regardless of the environment and use it for any purpose you intend to do. Just remove the development group of your Gemfile and include the stylesheet without the if-clause. Use the :text hash option to customise the text to show.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

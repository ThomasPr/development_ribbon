require "development_ribbon/version"
require "development_ribbon/engine" if defined? Rails

module DevelopmentRibbon
  def development_ribbon(options = {})
    options.reverse_merge! position: "right", color: "red", text: defined?(Rails) ? ::Rails.env : "development"

    content_tag :div, id: "development-ribbon" do
      content_tag :div, class: "#{options[:position]} ribbon-holder" do
        content_tag :div, class: "#{options[:color]} ribbon" do
          content_tag :div, class: "text" do
            options[:text]
          end
        end
      end
    end
  end
end

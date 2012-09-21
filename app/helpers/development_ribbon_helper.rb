module DevelopmentRibbonHelper
  def development_ribbon(options = {})
    options.reverse_merge! position: "right", color: "red", text: Rails.env
    
    content_tag :div, :id => "development-ribbon" do
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

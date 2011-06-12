# coding: utf-8
module ApplicationHelper

def jerror_message(model)
  if model.errors.any?
    content= "".html_safe
    model.errors.each do |n,m|
      content+=content_tag(:li,m)
    end
    content=content_tag(:h3,"Обнаружены следующие ошибки:")+content_tag(:ul,content)
    #content=content.html_safe
    content_tag :div, {:class=>"ui-state-error ui-corner-all",:style=>"padding:.3em;"} do
      content
    end
  else
    ""
  end
end

end

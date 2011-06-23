# coding: utf-8
module ApplicationHelper

def jerror_message(model)
  if model.errors.any?
    content= "".html_safe
    u=false
    model.errors.each do |n,m|
      unless n.to_s=="password"||n.to_s=="password_confirmation"
        content+=content_tag(:li,m)
      else
        u=true
      end
    end
    if u
      content+=content_tag(:li,"Ошибка пароля - пароль дожен быть не менее 6 символов, введенные пароли должны совпадать")
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

module ApplicationHelper
  def sampleHelper
    "<p>My helper</p>".html_safe
  end

  def sampleHelperTwo
    content_tag(:div, "My Content", class: "my-class")
  end

  def loginHelper
    if current_user.is_a?(GuestUser)
      (link_to "register", new_user_registration_path) +
      "<br />".html_safe + 
      (link_to "login", new_user_session_path)
    else
      link_to "logout",  destroy_user_session_path, method: :delete
    end
  end

  def sourceHelper(layout_name)
    if session[:source]
      content_tag(:p, "Thanks for visiting me from #{session[:source]} and you're on #{layout_name} layout", class: "source-greeting")
    end
  end
end

module ApplicationHelper
  def sampleHelper
    "<p>My helper</p>".html_safe
  end

  def sampleHelperTwo
    content_tag(:div, "My Content", class: "my-class")
  end

  def loginHelper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe + 
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout",  destroy_user_session_path, method: :delete, class: style
    end
  end

  def sourceHelper(layout_name)
    if session[:source]
      content_tag(:p, "Thanks for visiting me from #{session[:source]} and you're on #{layout_name} layout", class: "source-greeting")
    end
  end

  def nav_helper style, tag_type
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style}">Home</#{tag_type}>
<#{tag_type}><a href="#{about_path}" class="#{style}">About Me</#{tag_type}>
<#{tag_type}><a href="#{contact_path}" class="#{style}">Contact</#{tag_type}>
<#{tag_type}><a href="#{blogs_path}" class="#{style}">Blog</#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style}">Portfolios</#{tag_type}>
NAV
    return nav_links.html_safe
  end
end

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


  def nav_items
  [
    {
      url: root_path,
      title: 'Home'
    },
    {
      url: about_path,
      title: 'About Me'
    },
    {
      url: contact_path,
      title: 'Contact'
    },
    {
      url: blogs_path,
      title: 'Blog'
    },
    {
      url: portfolios_path,
      title: 'Portfolios'
    },
  ]
  end

  def nav_helper style, tag_type

    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</#{tag_type}>"
    end

    return nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end

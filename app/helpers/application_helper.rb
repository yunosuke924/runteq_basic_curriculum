module ApplicationHelper
  def page_title(page_title = '', admin = nil)
    base_title =
      if admin
        'RUNTEQ BOARD APP（管理画面）'
      else
        'RUNTEQ BOARD APP'
      end
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def active?(controller_name)
    return 'active' if controller_name == params[:controller]
  end
end
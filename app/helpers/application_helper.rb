module ApplicationHelper

  def page_title
    if content_for?(:title)
      "Marvel Movies - #{content_for(:title)}"
    else
      "Marvel Movies"
    end 
  end
end

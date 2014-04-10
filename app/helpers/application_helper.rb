module ApplicationHelper

  # Return a title for each page
  def title
    base_title = "jay compton"
    if @title.nil?
      base_title
    else
      "#{base_title} | #h{@title}"
    end
  end
end

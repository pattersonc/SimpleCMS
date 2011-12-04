module PagesHelper
  def title
    @page.title.blank? ? "Merrick Family Foundation" : "Merrick Family Foundation - #{@page.title}"
  end
end

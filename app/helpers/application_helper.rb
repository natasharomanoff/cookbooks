module ApplicationHelper
	def markdown(text)  
    	Redcarpet::Markdown.new(Redcarpet::Render::HTML, :space_after_headers => true).render(text).html_safe
	end 
end

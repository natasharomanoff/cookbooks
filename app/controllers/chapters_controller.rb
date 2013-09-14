class ChaptersController < AuthenticatedController

	def create
	    @book = Book.find(params[:book_id])
	    @chapter = @book.chapters.create!(params[:chapter])
	    redirect_to @book, :notice => "Chapter created!"  
		
	end

	def show
	    @book = Book.find(params[:book_id])
	    @chapter = @book.chapters.find(params[:id])
	end
end

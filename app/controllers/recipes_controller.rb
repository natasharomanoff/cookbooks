class RecipesController < AuthenticatedController
	def new
	    @book = Book.find(params[:book_id])
	    @chapter = @book.chapters.find(params[:chapter_id])
	end

	def create
	    @book = Book.find(params[:book_id])
	    @chapter = @book.chapters.find(params[:chapter_id])
	    @recipe = @chapter.recipes.create!(params[:recipe])
	    redirect_to [@book, @chapter, @recipe], :notice => "Recipe created!"  
	end

	def show
	    @book = Book.find(params[:book_id])
	    @chapter = @book.chapters.find(params[:chapter_id])
	    @recipe = @chapter.recipes.find(params[:id])
	end
end

class BooksController < ApplicationController
  def index
    @books = Book.order(params[:sort])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book successfully added to shelf."
      redirect_to books_url
    else
      render 'new'
      flash[:alert] = "Title and author cannot be empty"
    end
  end


  def show

  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :rating)
  end
end

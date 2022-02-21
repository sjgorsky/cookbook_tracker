class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:info] = "Book successfully added to shelf."
      redirect_to new_url
    else
      render 'new'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :rating)
  end
end

class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new

  end

  def show
    @book = Book.find(params[:id])
  end

def create
  book = Book.new(book_params)
  book.save
  redirect_to index
end


  def edit
    @book = Book.find(params[:idcd])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
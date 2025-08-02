class BooksController < ApplicationController
  def index
    render json: Book.all # active record rows
  end

  def create
    book = Book.new(book_params)

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity #422 unprocessable_entity It understands the request but it wasn't able to perform the action
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end

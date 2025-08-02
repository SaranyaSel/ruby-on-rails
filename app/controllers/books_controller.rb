class BooksController < ApplicationController
  def index
    render json: Book.all # active record rows
  end
end

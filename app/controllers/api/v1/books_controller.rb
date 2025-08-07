module Api
  module V1
    class BooksController < ApplicationController
      def index
        books = Book.all

        render json: BooksRepresenter.new(books).as_json
      end

      def create
        book = Book.new(book_params)

        if book.save
          render json: book, status: :created
        else
          render json: book.errors, status: :unprocessable_entity #422 unprocessable_entity It understands the request but it wasn't able to perform the action
        end
      end

      def destroy
        Book.find(params[:id]).destroy!

        head :no_content
      # rescue ActiveRecord::RecordNotDestroyed # used in the bottom
      #     render json: {}, status: :unprocessable_entity
      end

      private

      def book_params
        params.require(:book).permit(:title, :author)
      end
    end
  end
end

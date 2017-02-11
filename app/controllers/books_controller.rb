class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text
      format.csv do
        render plain: Book.generate_csv(@books)
      end
      format.json do
        # formatted_data = @books.map do |book|
        #   {
        #     title: book.title,
        #     author: book.author,
        #     read_already: book.already_read
        #   }
        # end
        # render json: formatted_data
        render json: @books
      end
    end
  end


end

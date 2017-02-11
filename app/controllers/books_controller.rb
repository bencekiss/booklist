class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text
      # format.json do
      #   formatted_data = @books.map do |book|
      #     {
      #       title: book.title,
      #       author: book.author,
      #       read_already: book.already_read
      #     }
      #   end
      #   render json: formatted_data
      # end
    end
  end


end

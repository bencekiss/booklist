class BooksController < ApplicationController

  def index
    @books = Book.all
    #code
  end
end

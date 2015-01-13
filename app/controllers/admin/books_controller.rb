class Admin::BooksController < ApplicationController

  # index action
  def index
    @books = Book.all
  end
end

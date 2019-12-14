class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(5)
    @book = Book.new
    @categories = Category.all
  end

  def create
    @book = Book.new title: params[:title]
    if @book.save
      flash[:success] = "Le livre a bien était créer"
      redirect_to "/books"
    else
      @books = Book.page(params[:page]).per(5)
      render "index"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def update

    @book = Book.find(params[:id])

    if @book.update title: params[:title]
      flash[:success] = "Le livre a était mis à jour"
      redirect_to "/books/#{params[:id]}"
    else
      render 'show'
    end

  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end

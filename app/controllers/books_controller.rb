class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def destroy
    book = 削除するBookレコードを取得
    book.削除
    redirect_to Bookの一覧ページへのパス
  end


  def index
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:article).permit(:title, :content)
  end

end

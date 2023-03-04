class BooksController < ApplicationController
  def new
  end

  def index
    #Viewへ渡すためのインスタンス変数に全データのオブジェクトを作成する。
    @books=Book.all
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @book=Book.new
  end

 def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # 4.インデックス画面へリダイレクト
    redirect_to '/books/show'
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to show_book_path(book.id)
  end

  def destroy
    # データ（レコード）を1件取得
    book=Book.find(params[:id])
    #ﾃﾞｰﾀの削除
    book.destroy
    # 投稿一覧画面へリダイレクト  
    redirect_to '/books'
  end

 private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end

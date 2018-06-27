class FavoritesController < ApplicationController
	before_action :authenticate_user!
  def create
  	@book = Book.find(params[:book_id])
  	@favorite = current_user.favorites.build(book: @book)
  	# if @favorite.save
  	# 	redirect_to books_url, notice: "お気に入りに登録しました"
  	# else
  	# 	redirect_to books_url, alert: "この投稿はお気に入りできません"
  	# end
    @favorite.save
  end

  def destroy
    @book = Book.find(params[:book_id])
  	@favorite = current_user.favorites.find_by!(book_id: @book)
  	@favorite.destroy
  	# redirect_to books_url, notice: "お気に入りを解除しました"
  end
end

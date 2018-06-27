class UsersController < ApplicationController
  def index
  	@users = User.all
    @book = Book.new

  end

  def show
  	@user = User.find(params[:id])
    @book = Book.new
  end

  def favorites
  	@user = User.find(params[:id])
  end

  # フォローしているユーザー一覧を表示するためのアクション
  def follows
   @user = User.find(params[:id])
   @follows = @user.followings
  end

  # フォロワー一覧を表示するためのアクション
  def followers
   @user = User.find(params[:id])
   @followers = @user.followers
  end

end

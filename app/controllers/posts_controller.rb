class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :start_at, :end_at, :allday, :memo))
      if @post.save
        flash[:notice] = "新規登録しました"
        redirect_to :posts
      else
        render "new", status: :unprocessable_entity
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(params.require(:post).permit(:title, :start_at, :end_at, :allday, :memo))
      flash[:notice] = "編集したよー"
      redirect_to :posts
      else
      render "edit", status: :unprocessable_entity
      end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] ="ユーザーを削除しました"
    redirect_to :posts
  end

end

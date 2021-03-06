class PostsController < ApplicationController

  before_action:authenticate_user!

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.content = params[:post][:content]
    @post.day = params[:post][:day]
    @post.user = current_user
    if @post.save
      redirect_to("/posts")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:post][:content]
    @post.day = params[:post][:day]

    if @post.save
      redirect_to("/posts")
    else
      render("/posts/edit")
    end

  end

  def destroy

    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts")

  end

  private

    def post_params
     params.require(:post).permit(:content, :day)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end

end

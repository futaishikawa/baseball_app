class UsersController < ApplicationController

  before_action :authenticate_user,{only:[:index, :show, :edit, :update]}
  before_action :forbid_login_user,{only:[:new,:create,:login_form,:login]}
  before_action :ensure_correct_user,{only:[:edit,:update]}

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name],email: params[:email],password: params[:password])

    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}",image.read)
    end

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "チームの登録が完了しました！"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end



  def edit
    @user = User.find_by(id: params[:id])
  end


  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}",image.read)
    end

    if @user.save
      flash[:notice] = "チーム情報を修正しました！"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end


  def login_form
    @user = User.find_by(id: params[:id])
  end

  def login
    @user = User.find_by(email: params[:email],password: params[:password])
    if @users
      session[:user_id] = @user.id
      flash[:notice] = "ログインが完了しました！"
      redairct_to("/posts/index")
    else
      @error_message = "メールアドレスもしくはパスワードが間違っています"
      @email = params[:email]
      @password = [:password]
      render("users/login_form")
    end
  end


  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

end

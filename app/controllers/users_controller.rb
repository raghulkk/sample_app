class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:send_welcome_email, :create]

  def root
    # render json: {message: "root path"}
  end

  def index
    @users = User.all
    #render json: @users.map(&:attributes)
  end

  def update
    @user = User.find(params[:id])
    @user.update(name: params[:name], age: params[:age])
    redirect_to users_path(@user)
  end

  def destroy
     @user = User.destroy(params[:id])
    redirect_to users_path(@user)
  end

  def new
  end
  
  def edit
    @user = User.where(id: params[:id]).first
  end

  def search
    @users = User.where("mail_id ILIKE ? or name ILIKE ?" , "%#{params[:query]}%", "%#{params[:query]}%")
    render "index"
  end

  def create
    # logic
    @user = User.create(name: params[:name], age: params[:age])
    render "show"
  end

  def show
    @user = User.where(id: params[:id]).first
  end
end

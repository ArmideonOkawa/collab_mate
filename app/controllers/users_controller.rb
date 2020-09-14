class UsersController < ApplicationController
  
  before_action :authorized, only: [:persist]
 
 def persist
  wristband = encode_token({user_id: @user.id})
  render json: {user: UserSerializer.new(@user), token: wristband}
 end

 def create
  @user = User.create(user_params)
  if @user.valid?
    wristband = encode_token({user_id: @user.id})
    render json: {user: UserSerializer.new(@user), token: wristband}, status: 201
  else
    render json: {message: "Invalid username"}
  end
 end
    
 def login
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    wristband = encode_token({user_id: @user.id})
    render json: {user: UserSerializer.new(@user), token: wristband}
  else
    render json: {message: "Invalid username or password"}
  end
end

def index
  @users = User.all
  render json: @users
end

#custom methods
def projects
  @user = User.find(params[:id])
  @projects = @user.projects
  render json: @projects
end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

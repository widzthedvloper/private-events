class UsersController < ApplicationController
  before_action :set_user, only: %i[show]
  before_action :authenticate, only: %i[show]

  # GET /users/1 or /users/1.json
  def show
    @future = @user.events.future_events
    @past = @user.events.past_events
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /login
  def login
    @user = User.new
  end

  # DELETE /users
  def logout
    session[:user_id] = nil
    flash.notice = 'You are now signed out!'
    redirect_to root_path
  end

  # POST /login
  def signin
    @user = User.find_by(user_params)
    if @user
      session[:user_id] = @user.id
      if session[:redirect_me]
        redirect_to session[:redirect_me]
      else
        redirect_to root_path
      end
    else
      @user = User.new(user_params)
      flash.now.alert = 'Invalid login credentials'
      render :login
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:email)
  end
end

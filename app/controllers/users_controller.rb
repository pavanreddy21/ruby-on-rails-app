class UsersController < ApplicationController
    def index
        @users = User.all
        assign_user_to_last_or_new
        @employments = @user.employments
        @employment = Employment.new
        @employment.user = @user
      end

    
    def assign_user_to_last_or_new
      @user = User.last
      @user ||= User.new
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to root_path, notice: "User was successfully created" }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end

    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to root_path, notice: "User was successfully updated" }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to root_path, notice: "User was successfully deleted."
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :nickname, :address, :email, :phone, :address)
    end
  end
  
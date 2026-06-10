class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
    skip_before_action :require_login, only: %i[new create]
    def show
    end

    def new
        @user = User.new
    end

    def edit
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                format.html { redirect_to user_url(@user),notice: "ユーザーの作成に成功しました" }
                format.json { render :show, status: :created, location: @user }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
                format.html { redirect_to user_url(@user), notice: "ユーザーの更新に成功しました" }
                format.json { render :show, status: :ok, location: @user }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @user.destroy

        redirect_to users_url, notice: "ユーザーを削除しました"
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end

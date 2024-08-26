class UserTodosController < ApplicationController
  before_action :set_user

  def index
    @todos = @user.todos
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end

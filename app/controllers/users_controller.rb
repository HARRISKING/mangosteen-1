class UsersController < ApplicationController
  def create
    user = User.new email: '123@qq.com', name: 'harrisking'
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def show
    p '你访问了show'
    user = User.find_by_id params[:id]
    render json: user
    if user
      render json: user.errors
    else
      head 404 
    end
  end
end

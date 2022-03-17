class UsersController < ApplicationController
  def create
    p '你访问了create'
    user = User.new email: 'llc@qq.com', name: 'harrisking'
    if user.save
      p '保存数据成功'
      render json: user
    else
      p '报错'
    end
  end

  def show
    p '你访问了show'
  end
end

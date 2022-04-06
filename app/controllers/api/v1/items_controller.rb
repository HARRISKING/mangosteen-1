class Api::V1::ItemsController < ApplicationController

 # 查询所有items
 def index
  items = Item.page params[:page]
  render json: {
   resource: items,
   pager: {
    index: params[:page],
    length: 10,
    count: Item.count
   }
  }
 end

 # 新增items
 def create 
  item = Item.new amount: params[:amount]
  if item.save
   render json: {resource: item}
  else
   render json: {errors: item.errors}
  end
 end
end

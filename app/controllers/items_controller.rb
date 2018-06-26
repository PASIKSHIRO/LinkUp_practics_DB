class ItemsController < ApplicationController

  def index
    @items = Item.all
    paginate json: @items
  end

  def show
    render json: @item
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      render :show, head: created, location => item_path(@item)
    else
      render json: @item.errors, status: 400, message: 'Sorry!Unsuccessfully created item!'
    end
  end

  def update
    if @item.update(params[:item])
      render :show, head: created, location => item_path(@item)
    else
      render json: @item.errors, status: 400, message: 'Sorry!Unsuccessfully update item!'
    end
  end

  def destroy
    @item.destroy
  end

end

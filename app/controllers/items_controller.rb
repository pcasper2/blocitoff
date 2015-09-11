class ItemsController < ApplicationController
  def create
    @item = current_user.items.build(item_params)

    if @item.save!
      flash[:notice] = "Item was saved"
    else
      flash[:error] = "There was a problem saving your item"
    end
    #redirect_to user_path(current_user)

    respond_to do |format|
      format.html
      format.js
    end

  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was completed"
    else
      flash[:error] = "There was a problem deleting your item"
    end
    #redirect_to user_path(current_user)

    respond_to do |format|
      format.html
      format.js
    end
  end

 
  def toggle
    @item = Item.find(params[:item_id])
    if @item.complete
      @item.complete = false
    elsif @item.complete == false
      @item.complete = true
    elsif @item.complete == nil
      @item.complete = true
    end
    @item.save
    redirect_to user_path(@item.user)
  end

  private 

  def item_params
    params.require(:item).permit(:name, :complete)
  end

end

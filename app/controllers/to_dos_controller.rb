class ToDosController < ApplicationController
  def new
  end

  def delete
  end

  def create
  end

  def edit
  end

  def toggle
    @to_do = ToDo.find(params[:to_do_id])
    if @to_do.resolved
      @to_do.resolved = false
    else
      @to_do.resolved = true
    end
    @to_do.save
    redirect_to user_path(@to_do.user)
  end
end

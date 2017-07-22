class EmailsController < ApplicationController
  def create
    items = Item.all.order(:created_at)
    ShoppingMailer.list(params[:email], items).deliver

    redirect_to items_path, notice: "Sent you an email!"
  end
end

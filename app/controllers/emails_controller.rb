class EmailsController < ApplicationController
  def create
    redirect_to items_path, notice: "Sent you an email!"
  end
end

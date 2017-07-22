class ShoppingMailer < ApplicationMailer

  def list(email, items)
    @items = items

    mail to: email, subject: "Your shopping list"
  end
end

# Preview all emails at http://localhost:3000/rails/mailers/shopping_mailer
class ShoppingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/shopping_mailer/list
  def list
    ShoppingMailer.list
  end

end

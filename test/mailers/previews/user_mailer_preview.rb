# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/user_new_menu_confirmation
  def user_new_menu_confirmation
    UserMailer.user_new_menu_confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/user_new_item_confirmation
  def user_new_item_confirmation
    UserMailer.user_new_item_confirmation
  end

end

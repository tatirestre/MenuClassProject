class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_new_menu_confirmation.subject
  #
  def user_new_menu_confirmation(menu_id)
    @menu = Menu.find(menu_id)
    @greeting = "Hi"

    mail to: @menu.user.email, 
    subject: "Menu Confirmation",
    from: "tarestre@gmail.com"

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_new_item_confirmation.subject
  #
  def user_new_item_confirmation
    @greeting = "Hi"

    mail to: "to@example.org", subject: "Item Confirmation"
  end
end

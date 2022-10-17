class UserMailer < ApplicationMailer
  def user_mail(user, post)
    @user = user
    @post = post

    mail to: @user.email, subject: "投稿の確認メール"
  end
end

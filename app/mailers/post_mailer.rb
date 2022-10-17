class PostMailer < ApplicationMailer
  def post_mail(post)
    @post = post

    mail to: @post.email, subject: "投稿の確認メール"
  end
end

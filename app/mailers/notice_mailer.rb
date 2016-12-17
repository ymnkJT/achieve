class NoticeMailer < ApplicationMailer
  def sendmail_blog(blog)
    @blog = blog

    mail to: "nui.mea5en@gmail.com",
         subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact

    mail to: "nui.mea5en@gmail.com",
         subject: '【Achieve】お問い合わせが完了しました'
  end
end

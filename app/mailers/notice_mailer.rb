class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog

    mail to: "toshiaki.ikeda.study@gmail.com",
    subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact

    mail to: "toshiaki.ikeda.study@gmail.com",
    subject: '【Achieve】問い合わせが投稿されました'

  end

  def sendmail_contact_thank(contact)
    @contact = contact

    mail to: @contact.email,
    subject: '【Achieve】問い合わせありがとうございます'

  end

end

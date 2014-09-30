class CommentNotification < ActionMailer::Base
  default from: "NoReply@Blue-Shift.com"

  def notification(comment)
    @comment = comment
    mail to: @comment.review.user.email,
      subject: "There is a new comment on your review"
  end

  def registration(user)
    @user = user
    mail to: @user.email,
      subject: "You are now registered with Blue-Shift!"
  end
end

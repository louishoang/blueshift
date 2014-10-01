class CommentNotification < ActionMailer::Base
  default from: "NoReply@Blue-Shift.com"

  def notification(comment)
    @comment = comment
    mail to: @comment.review.user.email,
      subject: "There is a new comment on your review"
  end
end

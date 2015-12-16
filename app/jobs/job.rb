class Job
  @queue  = :email_job

  def self.perform(name,email,comment)
    ContactMe.mail_from_user(name,email,comment).deliver_now
  end
end
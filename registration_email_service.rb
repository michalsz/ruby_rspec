
require "active_record"

class RegistrationEmailService
  
  def initialize(email_id)
    @email_id = email_id
  end

  def call
    email = Email.find_by(id: @email_id)
    return false if !email
    result = RegistrationEmail.send(email)
    email.mark_as_send if result

    result
  end
end

class Email < ActiveRecord::Base
  def mark_as_send

  end
end

class RegistrationEmail
  def self.send(email)

  end
end
class ContactMailer < ApplicationMailer

  def email_agent agent_id, first_name, last_name, email, message

    @agent = Account.find(agent_id)
    @first_name = first_name
    @last_name = last_name
    @email = email_agent
    @message = message

    if @agent.present?
      logger.debug("hELLLOOOOOOOOO")
      mail to: @agent.email, message: "You have a new contact from Property Matcher"
    end
  end

end

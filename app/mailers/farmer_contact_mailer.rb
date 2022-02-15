class FarmerContactMailer < ApplicationMailer

  def contact_farmer_email(attributes)

    @farmer = attributes[:farmer]
    @sender = attributes[:sender]
    @message = attributes[:message]

    mail(to: @farmer, subject: "Someone wants your grains")
  end
end

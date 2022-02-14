require "rails_helper"

RSpec.describe FarmerContactMailer, type: :mailer do
  it 'can send an email' do
    attributes = {farmer: "to@example.org",
                    sender: "test@example.com",
                    message: "quick fox"}
    mail = FarmerContactMailer.contact_farmer_email(attributes)

    expect(mail.subject).to eq("Someone wants your grains")
    expect(mail.to).to eq(["to@example.org"])
    expect(mail.from).to eq(["wheatcute.backend@gmail.com"])
    
    expect(mail.body.encoded).to include("quick fox")
  end
end

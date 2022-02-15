module Mutations
  class ContactFarmer < BaseMutation
  argument :farmer, String, required: true
  argument :sender, String, required: true
  argument :message, String, required: true
  field :response, String

    def resolve(attributes)
      FarmerContactMailer.contact_farmer_email(farmer: attributes[:farmer], sender: attributes[:sender], message: attributes[:message]).deliver_now

      { response: "Message sent" }
    end
  end

end

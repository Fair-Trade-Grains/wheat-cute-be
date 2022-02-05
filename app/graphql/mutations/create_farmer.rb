module Mutations
  class CreateFarmer < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: false
    argument :address, String, required: false
    argument :region, String, required: false
    argument :bio, String, required: false
    argument :photo_url, String, required: false

    type Types::FarmerType

    def resolve(name: nil, email: nil, phone: nil, address: nil, region: nil, bio: nil, photo_url: nil)
      farmer = Farmer.create!(
        name: name,
        email: email,
        phone: phone,
        address: address,
        region: region,
        bio: bio,
        photo_url: photo_url,
      )
      # if farmer.save
      #   {
      #     farmer: farmer,
      #     errors: []
      #   }
      # else
      #   {
      #     farmer: nil,
      #     errors: farmer.errors.full_messages
      #   }
      # end
    end
  end
end

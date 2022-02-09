module Mutations
  class CreateFarmer < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: false
    argument :address, String, required: false
    argument :region, String, required: false
    argument :bio, String, required: false
    argument :photo_url, String, required: false
    field :farmer, Types::FarmerType

    type Types::FarmerType

    def resolve(name: nil, email: nil, phone: nil, address: nil, region: nil, bio: nil, photo_url: nil)
      farmer = Farmer.new(
        name: name,
        email: email,
        phone: phone,
        address: address,
        region: region,
        bio: bio,
        photo_url: photo_url,
      )
      if farmer.save
        farmer
      else
        {
          farmer: farmer.errors.full_messages.join
        }
      end
    end
  end
end

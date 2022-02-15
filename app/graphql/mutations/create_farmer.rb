module Mutations
  class CreateFarmer < BaseMutation
    argument :attributes, Types::FarmerAttributes, required: true
    field :farmer, Types::FarmerType
    field :errors, String

    type Types::FarmerType

    def resolve(attributes: nil)
      if attributes.to_h[:photo_url].nil?
        attributes = { :name =>attributes.to_h[:name],
                       :email =>attributes.to_h[:name],
                       :phone =>attributes.to_h[:name],
                       :address =>attributes.to_h[:name],
                       :region =>attributes.to_h[:name],
                       :bio =>attributes.to_h[:name],
                       :photo_url =>"#{random_farm_image}"
                     }
        farmer = Farmer.new(attributes: attributes.to_h)
      else
        farmer = Farmer.new(attributes: attributes.to_h)
      end
      if farmer.save
        { farmer: farmer, errors: nil }
      else
        { farmer: nil, errors: farmer.errors.full_messages.join(", ") }
      end
    end

    def random_farm_image
      array = ["https://imgur.com/0thgtTJ",
              "https://imgur.com/ettFY8W",
              "https://imgur.com/r2d8r4n",
              "https://imgur.com/pGEOMvT",
              "https://imgur.com/8TbD8YX",
              "https://imgur.com/DR0gmaA",
              "https://imgur.com/RJqNDM8",
              "https://imgur.com/eJvXanO"]

      array.shuffle.pop(1).first
    end
  end
end

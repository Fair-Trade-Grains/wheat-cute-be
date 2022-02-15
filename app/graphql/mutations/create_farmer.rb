module Mutations
  class CreateFarmer < BaseMutation
    argument :attributes, Types::FarmerAttributes, required: true
    field :farmer, Types::FarmerType
    field :errors, String

    type Types::FarmerType

    def resolve(attributes: nil)
      if attributes.to_h[:photo_url] == ""
        attributes = { :name =>attributes.to_h[:name],
                       :email =>attributes.to_h[:email],
                       :phone =>attributes.to_h[:phone],
                       :address =>attributes.to_h[:address],
                       :region =>attributes.to_h[:region],
                       :bio =>attributes.to_h[:bio],
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
      array = ["https://res.cloudinary.com/drsgz7uiy/image/upload/v1644945446/wheatcute/gwnpiytpyzr71uxwv4wp.jpg"]

      array.shuffle.pop(1).first
    end
  end
end

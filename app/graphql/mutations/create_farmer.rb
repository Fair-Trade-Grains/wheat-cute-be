module Mutations
  class CreateFarmer < BaseMutation
    argument :attributes, Types::FarmerAttributes, required: true
    field :farmer, Types::FarmerType
    field :errors, String

    type Types::FarmerType

    def resolve(attributes: nil)
      farmer = Farmer.new(attributes: attributes.to_h)
      if farmer.save
        { farmer: farmer, errors: nil }
      else
        { farmer: nil, errors: farmer.errors.full_messages.join(", ") }
      end
    end
  end
end

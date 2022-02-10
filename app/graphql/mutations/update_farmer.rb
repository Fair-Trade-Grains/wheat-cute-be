module Mutations
  class UpdateFarmer < BaseMutation
    field :farmer, Types::FarmerType, null: false

    argument :id, ID, required: true
    argument :attributes, Types::FarmerAttributes, required: true

    def resolve(id: nil, attributes: nil)
      if Farmer.exists?(id)
        farmer = Farmer.find(id)
        farmer.update(attributes.to_h)
        farmer
      else
        "Farmer could not be updated."
      end
    end
  end
end

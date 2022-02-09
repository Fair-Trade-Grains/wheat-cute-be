module Mutations
  class UpdateFarmer < BaseMutation
    field :farmer, Types::FarmerType, null: false

    argument :id, ID, required: true
    argument :attributes, Types::FarmerAttributes, required: true

    def resolve(id: nil, attributes: nil)
      farmer = Farmer.find(id)
      if farmer.update(attributes.to_h)
        {farmer: farmer}
      else
        raise GraphQL::ExecutionError, post.errors.full_messages.join(", ")
      end
    end
  end
end

module Mutations
  class CreateGrain < BaseMutation
    argument :attributes, Types::GrainAttributes, required: true
    type Types::GrainType
    field :grain, Types::GrainType
    field :errors, String

    def resolve(attributes: nil)
      if Farmer.exists?(attributes[:farmer_id])
        grain = Grain.create!(attributes: attributes.to_h)
        {grain: grain, errors: nil}
      else
        {grain: nil, errors: "Grain could not be created."}
      end
    end
  end
end

module Mutations
  class UpdateGrain < BaseMutation
    field :grain, Types::GrainType, null: false

    argument :id, ID, required: true
    argument :attributes, Types::GrainAttributes, required: true

    def resolve(id: nil, attributes: nil)
      if Grain.exists?(id)
        grain = Grain.find(id)
        grain.update(attributes.to_h)
        grain
      else
        "Grain could not be updated."
      end
    end
  end
end

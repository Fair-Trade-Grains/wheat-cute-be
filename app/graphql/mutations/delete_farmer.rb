module Mutations
  class DeleteFarmer < BaseMutation
    field :response, String
    field :errors, String

    argument :id, ID, required: false

    def resolve(id:)
      if Farmer.exists?(id)
        Farmer.destroy(id)
        { response: "You've successfully destroyed this farmer and their grains.", errors: nil}
      else
        { response: nil, errors: "Farmer not found." }
      end
    end
  end
end

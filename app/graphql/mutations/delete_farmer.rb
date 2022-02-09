module Mutations
  class DeleteFarmer < BaseMutation
    field :response, ID, null: true
    argument :id, ID, required: false

    def resolve(id:)
      farmer = Farmer.find(id)
      farmer.destroy
      { response: "You've successfully destroyed this farmer and their grains." }
     end
  end
end

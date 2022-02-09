module Mutations
  class DeleteFarmer < BaseMutation
    field :response, ID, null: true
    argument :id, ID, required: false

    def resolve(id:)
      if Farmer.exists?(id)
        farmer = Farmer.find(id)
        farmer.destroy
        { response: "You've successfully destroyed this farmer and their grains." }
      else
        { response: "Farmer not found" }
      end
    end
  end
end

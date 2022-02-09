module Mutations
  class DeleteFarmer < BaseMutation
    field :id, ID, null: true
    argument :id, ID, required: false

    def resolve(id:)
      farmer = Farmer.find(id)
      farmer.destroy
      { id: id }
    end
  end
end

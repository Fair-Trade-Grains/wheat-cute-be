module Mutations
  class DeleteGrain < BaseMutation
    field :response, ID, null: true
    argument :id, ID, required: false

    def resolve(id:)
      if Grain.exists?(id)
        grain = Grain.find(id)
        grain.destroy
        { response: "You've successfully destroyed this grain." }
      else
        { response: "Grain not found" }
      end
    end
  end
end

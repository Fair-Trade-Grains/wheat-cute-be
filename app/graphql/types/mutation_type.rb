module Types
  class MutationType < Types::BaseObject
    field :create_farmer, mutation: Mutations::CreateFarmer
    field :update_farmer, mutation: Mutations::UpdateFarmer
  end
end

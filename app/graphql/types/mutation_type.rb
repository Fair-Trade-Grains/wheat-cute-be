module Types
  class MutationType < Types::BaseObject
    field :create_farmer, mutation: Mutations::CreateFarmer
  end
end

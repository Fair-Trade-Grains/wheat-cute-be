module Types
  class MutationType < Types::BaseObject
    field :create_farmer, mutation: Mutations::CreateFarmer

    field :update_farmer, mutation: Mutations::UpdateFarmer

    field :delete_farmer, mutation: Mutations::DeleteFarmer

    field :create_grain, mutation: Mutations::CreateGrain

    field :update_grain, mutation: Mutations::UpdateGrain
  end
end

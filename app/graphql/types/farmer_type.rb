module Types
  class FarmerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String, null: false
    field :phone, String
    field :address, String
    field :region, String
    field :bio, String
    field :photo_url, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

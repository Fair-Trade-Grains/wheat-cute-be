module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_farmers, [FarmerType], null: false
    field :all_grains, [GrainType], null: false
    field :grain_search, [GrainType], null: false do
      argument :name, String
    end

    def all_farmers
      Farmer.all
    end

    def grain_search(name:)
      Grain.where("name ILIKE ?", "%#{name}%")
    end

    def all_grains
      Grain.all
    end
  end
end

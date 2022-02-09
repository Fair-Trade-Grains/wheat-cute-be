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

    field :farmer_search, [FarmerType], null: false do
      argument :name, String
    end

    field :farmer_by_id, FarmerType, null: false do
      argument :id, ID
    end

    field :region_search, [FarmerType], null: false do
      argument :region, String
    end

    field :bio_search, [FarmerType], null: false do
      argument :bio, String
    end

    def all_farmers
      Farmer.all
    end

    def farmer_search(name:)
      Farmer.where("name ILIKE ?", "%#{name}%")
    end

    def farmer_by_id(id:)
      # Farmer.where(id: id)
      Farmer.find(id)
    end

    def region_search(region:)
      Farmer.where("region ILIKE ?", "%#{region}%")
    end

    def bio_search(bio:)
      Farmer.where("bio ILIKE ?", "%#{bio}%")
    end

    def grain_search(name:)
      Grain.where("name ILIKE ?", "%#{name}%")
    end

    def all_grains
      Grain.all
    end
  end
end

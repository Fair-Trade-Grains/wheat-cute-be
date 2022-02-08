module Mutations
  class UpdateGrain < BaseMutation
    field :post, Types::GrainType, null: false

    argument :id, ID, required: true
    argument :attributes, Types::GrainAttributes, required: true

    def resolve(id: nil, attributes: nil)
      grain = Grain.find(id)
      if grain.update(attributes.to_h)
        {post: grain}
      else
        raise GraphQL::ExecutionError, post.errors.full_messages.join(", ")
      end
    end
  end
end

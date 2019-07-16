module Types
  class MutationType < Types::BaseObject
    field :create_position, mutation: Mutations::CreatePosition
  end
end

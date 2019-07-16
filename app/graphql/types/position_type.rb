module Types
  class PositionType < Types::BaseObject
    field :id, ID, null: false
    field :position, String, null: false
    field :description, String, null: false
    field :year, String, null: false
  end
end

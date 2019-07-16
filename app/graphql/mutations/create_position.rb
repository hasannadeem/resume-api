class Mutations::CreatePosition < Mutations::BaseMutation
  argument :position, String, required: true
  argument :description, String, required: true
  argument :year, String, required: true

  field :position, Types::PositionType, null: false
  field :errors, [String], null: false

  def resolve(position:, description:, year:)
    position = Resume.first.positions.new(position: position, description: description, year: year)

    if position.save!
      {
        position: position,
        errors: [],
      }
    else
      {
        position: nil,
        errors: position.errors.full_messages
      }
    end
  end
end

module Types
  class QueryType < Types::BaseObject
    field :resume, Types::ResumeType, null: false

    def resume
      Resume.first
    end
  end
end

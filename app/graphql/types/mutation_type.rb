module Types
  class MutationType < Types::BaseObject
    field :createVideo, mutation: Mutations::CreateVideo
  end
end

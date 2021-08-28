module Resolvers
  class CategoryResolver < Resolvers::BaseResolver
    type [Types::CategoryType], null: false

    argument :ids, [ID], required: false

    def resolve(ids: [])
        return Category.where(id: ids) if ids.present?

        Category.all
    end
  end
end
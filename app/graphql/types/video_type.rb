include(Rails.application.routes.url_helpers)

module Types
  class VideoType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    
    field :url, String, null: true
    def url
      if object.clip.present?
        rails_blob_path(object.clip, only_path: true)
      end
    end

    field :category, Types::CategoryType, null: false
    
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

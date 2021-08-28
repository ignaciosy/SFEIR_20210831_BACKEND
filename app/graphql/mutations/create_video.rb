module Mutations
    class CreateVideo < Mutations::BaseMutation
        argument :title, String, required: true
        argument :clip, ApolloUploadServer::Upload, required: true
        argument :category_id, ID, required: true

        field :video, Types::VideoType, null: true
        field :errors, [String], null: true    

        def resolve(input)
            file = input[:clip]
            blob = ActiveStorage::Blob.create_and_upload!(
                io: file,
                filename: file.original_filename,
                content_type: file.content_type
            )

            video = Video.new(
                title: input[:title],
                clip: blob,
                category_id: input[:category_id]
            )
            
            if video.save 
                { video: video } 
            else 
                { errors: video.errors.full_messages }
            end
        end
    end
end
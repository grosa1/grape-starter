# frozen_string_literal: true
module Api
  class Base < Grape::API
    prefix :api
    version 'v1', using: :path
    format :json

    mount Endpoints::Root
    # mount Endpoints::Dummy

    add_swagger_documentation format: :json,
                              info: {
                                title: 'Starter API'
                              },
                              models: [
                                Entities::ApiError
                              ]
  end
end

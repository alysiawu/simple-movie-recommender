module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :all_links, [LinkType], null: false

    def all_links
      Link.all
    end

    field :all_banners, [BannerType], null: false

    def all_banners
      Banner.all
    end

  end
end


# require 'graphql'

# class QueryType < GraphQL::Schema::Object
#   graphql_name 'Query'
#   field :hello do
#     type types.String
#     resolve -> (obj, args, ctx) { 'Hello world!' }
#   end
# end

# class Schema < GraphQL::Schema
#   query QueryType
# end

# puts Schema.execute('{ hello }').to_jsons
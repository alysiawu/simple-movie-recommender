module Types
  class BannerType < Types::BaseObject
    field :id, ID, null: false
    # field :image, String, null: false
    field :title, String, null: false
    field :description, String, null: false
    # field :disclaimer, String, null: false
  end
end

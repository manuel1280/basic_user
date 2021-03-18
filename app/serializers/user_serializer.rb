class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :birthday, :image_url
end

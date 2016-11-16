class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :posts,embed: :ids, include: true
end

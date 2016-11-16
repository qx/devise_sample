class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content,:lover
  has_one :user
  def lover
    "kkkkk"
  end
end

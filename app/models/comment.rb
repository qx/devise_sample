class Comment < ActiveRecord::Base
  belongs_to :post, :touch => true #有瑕疵,设置后的第一次仍然不会更新
  # belongs_to :post #在更新子属性后post的cache不会被更新
  # scope :recent_comments,->{
  #   order(:updated_at => "DESC").limit(2)
  # }
end

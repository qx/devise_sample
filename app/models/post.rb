# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  cover      :string
#

class Post < ActiveRecord::Base
   # validates :user_id, presence: true
   belongs_to :user
   markable_as :favorite
   acts_as_commentable
   acts_as_taggable # Alias for acts_as_taggable_on :tags,默认
   acts_as_taggable_on :skills, :interests#可以有多个不同类别标签
   mount_uploader :cover, PostCoverUploader

end

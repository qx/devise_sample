# == Schema Information
#
# Table name: posts
#
#  title      :string
#  content    :string
#  user_id    :integer
#  cover      :string
#

class Post < ActiveRecord::Base
  mount_uploader :cover, PostCoverUploader
end

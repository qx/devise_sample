# == Schema Information
#
# Table name: posts
#
#  title      :string
#  published  :boolean
#  image      :string
#  attach     :string
#

class Post < ActiveRecord::Base
  mount_uploader :image, PostImageUploader
  mount_uploader :attach, PostAttachUploader
end

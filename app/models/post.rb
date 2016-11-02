# == Schema Information
#
# Table name: posts
#
#  title      :string
#  published  :boolean
#

class Post < ActiveRecord::Base
  mount_uploader :image, PostImageUploader
end

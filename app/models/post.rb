# == Schema Information
#
# Table name: posts
#
#  content    :text
#

class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
end

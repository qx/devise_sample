# == Schema Information
#
# Table name: comments
#
#  content          :text
#  commentable_id   :integer
#  commentable_type :string
#

class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
end

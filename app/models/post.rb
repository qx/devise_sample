# == Schema Information
#
# Table name: posts
#
#  title      :string
#  content    :string
#  user_id    :integer
#

class Post < ActiveRecord::Base
  belongs_to :user
end

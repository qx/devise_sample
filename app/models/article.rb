# == Schema Information
#
# Table name: articles
#
#  content    :text
#

class Article < ActiveRecord::Base
  has_many :comments, as: :commentable
end

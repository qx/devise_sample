# == Schema Information
#
# Table name: member_videos
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Member::Video < ActiveRecord::Base
  has_many :member_comments, :class_name => 'Member::Comment'
end

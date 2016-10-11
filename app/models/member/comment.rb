# == Schema Information
#
# Table name: member_comments
#
#  id              :integer          not null, primary key
#  member_video_id :integer
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Member::Comment < ActiveRecord::Base
  belongs_to :member_video, :class_name => 'Member::Video'
end

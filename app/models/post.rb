class Post < ActiveRecord::Base
  has_many :comments

  def recent_comments
    self.comments.order('created_at').limit(2)
  end
end

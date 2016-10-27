namespace :db do
  desc "Fill database with sample data"
  task initdata: :environment do
    make_users_basic_info

  end

end

def make_users_basic_info
  5000.times do
    post = Post.new(:title => "ceshi",:content =>"kjksljdf;asdfasd")
    post.save
    # Post.last.delete
  end

  3.times do
    Post.limit(20).each do |post|
      post.comments.new(title: "this is post")
      post.save
    end
  end


end
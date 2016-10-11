class CreateMemberVideos < ActiveRecord::Migration
  def change
    create_table :member_videos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

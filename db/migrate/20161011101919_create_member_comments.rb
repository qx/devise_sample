class CreateMemberComments < ActiveRecord::Migration
  def change
    create_table :member_comments do |t|
      t.belongs_to :member_video, index: true, foreign_key: true
      t.string :title

      t.timestamps null: false
    end
  end
end

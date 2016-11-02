class AddAttachToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :attach, :string
  end
end

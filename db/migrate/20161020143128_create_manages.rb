class CreateManages < ActiveRecord::Migration
  def change
    create_table :manages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

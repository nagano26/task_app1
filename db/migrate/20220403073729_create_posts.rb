class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start_at
      t.date :end_at
      t.boolean :allday
      t.string :memo

      t.timestamps
    end
  end
end

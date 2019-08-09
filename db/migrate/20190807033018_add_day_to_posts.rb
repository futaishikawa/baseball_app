class AddDayToPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

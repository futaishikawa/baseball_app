class AddDayToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :day, :string
  end
end

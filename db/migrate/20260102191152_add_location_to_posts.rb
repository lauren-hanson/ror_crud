class AddLocationToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :location, :string
  end
end

class AddWriterToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :writer, :string
  end
end

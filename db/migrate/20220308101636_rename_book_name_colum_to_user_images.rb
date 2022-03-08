class RenameBookNameColumToUserImages < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_images, :book_name, :user_name
  end
end

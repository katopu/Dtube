class RenameContentColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :content, :name
  end
end

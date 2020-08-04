class RenameContentColumnToComments < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :name, :text
  end
end

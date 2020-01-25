class RenameDesctiptionToDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :blocks, :desctiption, :description
  end
end

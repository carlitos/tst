class RenameUserIdIdToUserIdInBooks < ActiveRecord::Migration
  
  
  def self.up
    rename_column :books, :user_id_id, :user_id
  end

end

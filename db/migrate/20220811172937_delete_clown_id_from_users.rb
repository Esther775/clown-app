class DeleteClownIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :clown_id
  end
end

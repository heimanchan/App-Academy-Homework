class AddIndexToPeople < ActiveRecord::Migration[5.2]
  def change
    add_index :people, :name # table_name, [col_1, col_2...], options_hash
  end
end

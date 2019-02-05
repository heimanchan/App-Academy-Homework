class CreateToysTable < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.integer :toyable_id
      t.string :toyable_type
      t.references :toyable, polymorphic: true, index: true
    end
    add_index :toys, :name, unique: true
    add_index :toys, :toyable_id
  end
end

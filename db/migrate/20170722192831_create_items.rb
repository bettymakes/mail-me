class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end

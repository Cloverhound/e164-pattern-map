class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :tfn
      t.integer :site_id
      t.string :description
      t.integer :active
      t.string :dnis

      t.timestamps null: false
    end
  end
end

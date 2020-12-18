class RemoveTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :pet_applications
    create_table :pet_applications do |t|
      t.references :application, foreign_key: true
      t.references :pet, foreign_key: true
    end
  end
end

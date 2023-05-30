class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :birthday
      t.string :size
      t.string :breed
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

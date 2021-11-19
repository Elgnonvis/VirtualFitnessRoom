class CreateProgrammes < ActiveRecord::Migration[6.1]
  def change
    create_table :programmes do |t|
      t.string :programme_name
      t.integer :programme_cost
      t.references :user, null: false, foreign_key: true
      t.text :programme_goal
      t.string :images, array: true, default: []
      t.integer :programme_duration
      t.boolean :payed, default: false

      t.timestamps
    end
  end
end

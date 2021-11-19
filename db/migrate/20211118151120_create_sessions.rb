class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :programme, null: false, foreign_key: true
      t.string :session_title
      t.integer :session_duration
      t.text :session_description
      t.text :session_goals

      t.timestamps
    end
  end
end

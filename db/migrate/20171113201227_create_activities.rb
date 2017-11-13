class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.date :date
      t.string :activity
      t.integer :minutes
      t.text :comments
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

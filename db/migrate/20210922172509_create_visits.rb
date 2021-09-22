class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.references :user, foreign_keys: true
      t.references :url, foreign_keys: true
      t.integer :recurring_visits, null: true, default: 0
      t.timestamps
    end
  end
end

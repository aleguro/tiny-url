class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :url, null: false
      t.string :short_url, null: false, index: true
      t.timestamps
    end
  end
end

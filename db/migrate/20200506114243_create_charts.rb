class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.integer :country_id
      t.integer :collection_id

      t.timestamps
    end
  end
end

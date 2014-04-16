class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :year
      t.string :winery
      t.string :country
      t.decimal :price
      t.string :varietal

      t.timestamps
    end
  end
end

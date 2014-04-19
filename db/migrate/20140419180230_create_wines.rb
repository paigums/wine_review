class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.string :winery
      t.string :country
      t.string :varietal
      t.decimal :price

      t.timestamps
    end
  end
end

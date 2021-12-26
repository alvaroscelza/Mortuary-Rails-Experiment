class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :sell_price
      t.integer :buy_price
      t.integer :client_taxes_percentage
      t.text :description
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end

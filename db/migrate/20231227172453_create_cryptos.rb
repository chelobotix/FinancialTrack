class CreateCryptos < ActiveRecord::Migration[7.1]
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.string :name
      t.text :description
      t.decimal :last_price
      t.string :image

      t.timestamps
    end
  end
end

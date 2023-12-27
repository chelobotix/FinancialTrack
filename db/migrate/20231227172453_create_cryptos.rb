class CreateCryptos < ActiveRecord::Migration[7.1]
  def change
    create_table :cryptos do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps
    end
  end
end

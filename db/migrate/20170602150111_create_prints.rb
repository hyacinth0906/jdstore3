class CreatePrints < ActiveRecord::Migration[5.0]
  def change
    create_table :prints do |t|
      t.integer :product_id
      t.string :detail

      t.timestamps
    end
  end
end

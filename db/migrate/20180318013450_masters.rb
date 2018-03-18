class Masters < ActiveRecord::Migration[5.1]
  def change
    create_table :masters do |t|
      t.integer :order
      t.string :name
      t.string :years_lived
      t.text :description
      t.string :img_url
    end
  end
end

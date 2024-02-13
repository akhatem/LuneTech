class CreateOpinions < ActiveRecord::Migration[7.1]
  def change
    create_table :opinions do |t|
      t.references :film
      t.string :user
      t.integer :stars
      t.text :review
      t.timestamps
    end
  end
end

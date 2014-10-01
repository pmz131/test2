class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.references :user, index: true
      t.text :description

      t.timestamps
    end
  end
end

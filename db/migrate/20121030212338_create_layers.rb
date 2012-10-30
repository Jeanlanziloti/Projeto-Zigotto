class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :nome
      t.text :description

      t.timestamps
    end
  end
end

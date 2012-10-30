class CreateProtocols < ActiveRecord::Migration
  def change
    create_table :protocols do |t|
      t.string :name
      t.text :description
      t.references :layer

      t.timestamps
    end
    add_index :protocols, :layer_id
  end
end

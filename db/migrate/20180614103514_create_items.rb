class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :user
      t.string :name_item
      t.text :description_item
      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.string :title
      t.text :text_reviews
      t.references :response, polymorphic: true, index: true
      t.timestamps
    end
  end
end

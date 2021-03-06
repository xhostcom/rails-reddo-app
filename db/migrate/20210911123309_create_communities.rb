class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :url
      t.text :bio
      t.text :rules
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

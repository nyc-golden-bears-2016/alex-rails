class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.belongs_to :article
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end

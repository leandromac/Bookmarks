class CreateBooksmarks < ActiveRecord::Migration
  def change
    create_table :booksmarks do |t|
      t.string :title
      t.string :url

      t.timestamps null: false
    end
  end
end

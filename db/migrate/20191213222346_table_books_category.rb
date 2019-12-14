class TableBooksCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :categories
    add_column :categories, :name, :string

    create_table :books
    add_column :books, :title, :string
    add_column :books, :category_id, :integer
    add_index :books, :category_i
  end
end

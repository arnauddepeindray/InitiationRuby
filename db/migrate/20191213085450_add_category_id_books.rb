class AddCategoryIdBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :category_id, :integer
    add_index :books, :category_i
  end
end

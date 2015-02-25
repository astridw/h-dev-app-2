class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :state_of_practice, :string
    add_column :users, :bar_num, :integer
    add_column :users, :zip_code, :integer
    add_column :users, :zip_code_radius, :integer
  end
end

class AddFieldsToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :city, :string
    add_column :users, :description, :text
    add_column :users, :avatar, :string
    add_column :users, :age, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :portfolio_url, :string
    add_column :users, :favourite_things, :string
    add_column :users, :dislikes, :string
    add_column :users, :type, :string
  end
end

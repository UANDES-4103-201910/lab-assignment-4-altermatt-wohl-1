class AddColumnNumberToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Number, :integer
  end
end

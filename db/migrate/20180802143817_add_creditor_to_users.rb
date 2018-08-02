class AddCreditorToUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :loans, :creditor, :string
  end
end

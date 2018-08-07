class AddColumnsOfPassportData21 < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :PassTakenTimeG, :string
    add_column :loans, :PassTakenTimeC, :string
  end
end

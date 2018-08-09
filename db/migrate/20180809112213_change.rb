class Change < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :term, :string
    change_column :loans, :notice, :boolean
  end
end

class AddPassportDataColumns2 < ActiveRecord::Migration[5.2]
  def change
        add_column :loans, :gpd, :string
    add_column :loans, :cpd, :string
  end
end

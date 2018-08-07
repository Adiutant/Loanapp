class AddColumnsOfPassportData < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :BirthODG, :string
    add_column :loans, :BirthODC, :string
    add_column :loans, :RegistredAtG, :string
    add_column :loans, :RegistredAtC, :string
    add_column :loans, :SerialG, :string
    add_column :loans, :SerialC, :string
    add_column :loans, :PassTakenG, :string
    add_column :loans, :PassTakenC, :string
    remove_column :loans, :cpd
    remove_column :loans, :gpd
  end
end

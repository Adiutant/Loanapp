class DeletePassportDataColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :loans, :GivPassData
    remove_column :loans, :CredPassData
  end
end

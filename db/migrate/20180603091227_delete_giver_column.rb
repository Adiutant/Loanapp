class DeleteGiverColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :loans, :giver
  end
end

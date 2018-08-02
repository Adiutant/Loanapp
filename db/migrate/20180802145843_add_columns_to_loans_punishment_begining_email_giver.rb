class AddColumnsToLoansPunishmentBeginingEmailGiver < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :punishment, :string
    add_column :loans, :giver,:string
    add_column :loans, :begining,:string
    add_column :loans, :email,:string
     add_column :loans, :notice,:bool

  end
end

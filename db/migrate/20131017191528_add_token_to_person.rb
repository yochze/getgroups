class AddTokenToPerson < ActiveRecord::Migration
  def change
    add_column :people, :token, :string
  end
end

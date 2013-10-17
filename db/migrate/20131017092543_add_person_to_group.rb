class AddPersonToGroup < ActiveRecord::Migration
  def change
  	add_column :people, :group_id, :integer
  end
end

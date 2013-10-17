class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.integer :group_id
      t.text :content

      t.timestamps
    end
  end
end

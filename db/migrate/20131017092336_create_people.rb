class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :department
      t.string :phone
      t.string :phone_scnd
      t.string :email
      t.string :fax
      t.string :url

      t.timestamps
    end
  end
end

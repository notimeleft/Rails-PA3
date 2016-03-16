class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :id_num
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email

      t.timestamps null: false
    end
  end
end

class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :user_email
      t.string :subject
      t.string :course_name

      t.timestamps null: false
    end
  end
end

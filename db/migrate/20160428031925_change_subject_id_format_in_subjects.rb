class ChangeSubjectIdFormatInSubjects < ActiveRecord::Migration
  def change
    change_column :subjects, :subject_id, :string
  end
end

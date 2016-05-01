class FixSid < ActiveRecord::Migration
  def change
    rename_column :subjects, :sid, :subject_id 
  end
end

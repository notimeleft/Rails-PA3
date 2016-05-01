class AddSidToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :sid, :integer
  end
end

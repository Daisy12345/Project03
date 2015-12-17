class DeleteColumnNameNoOfStudents < ActiveRecord::Migration
  def change
  	remove_column :workshops, :no_of_students
  end
end

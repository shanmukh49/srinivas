class AddEducationToApplicants < ActiveRecord::Migration
  def change
  	add_column :applicants, :education, :string
  end
end

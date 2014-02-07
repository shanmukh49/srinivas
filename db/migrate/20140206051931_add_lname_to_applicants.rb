class AddLnameToApplicants < ActiveRecord::Migration
   def change
  	add_column :applicants, :lname, :string
  	add_column :applicants, :mobile, :integer
  	end
end

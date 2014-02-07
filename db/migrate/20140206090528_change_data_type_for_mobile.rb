class ChangeDataTypeForMobile < ActiveRecord::Migration
   def self.up
  	change_column :applicants, :mobile, :string
  end

  def self.down
  	change_column :applicants, :mobile, :integer
  end
end

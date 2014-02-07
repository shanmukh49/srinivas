class AddCvToApplicants < ActiveRecord::Migration
  def self.up
    change_table :applicants do |t|
      t.attachment :cv
    end
  end

  def self.down
    drop_attached_file :applicants, :cv
  end
end

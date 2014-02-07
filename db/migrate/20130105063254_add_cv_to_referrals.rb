class AddCvToReferrals < ActiveRecord::Migration
def self.up
    change_table :referrals do |t|
      t.attachment :cv
    end
  end

  def self.down
    drop_attached_file :referrals, :avatar
  end
end

class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :technology
      t.string :referredby

      t.timestamps
    end
  end
end

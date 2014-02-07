class CreateLoginInfo4s < ActiveRecord::Migration
  def change
    create_table :login_info4s do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end

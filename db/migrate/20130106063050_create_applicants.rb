class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :technology
      t.string :sourcingpartner
      t.string :role
      t.string :round
      t.datetime :scheduleofinterview
      t.string :interviewers
      t.string :status

      t.timestamps
    end
  end
end

class CreateSourcingpartners < ActiveRecord::Migration
  def change
    create_table :sourcingpartners do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

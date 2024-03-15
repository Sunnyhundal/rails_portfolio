class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :simpleicon
      t.string :area
      t.timestamps
    end
  end
end

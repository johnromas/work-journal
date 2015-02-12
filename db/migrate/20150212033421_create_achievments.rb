class CreateAchievments < ActiveRecord::Migration
  def change
    create_table :achievments do |t|
      t.string :option

      t.timestamps
    end
  end
end

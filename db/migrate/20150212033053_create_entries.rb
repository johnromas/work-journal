class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :description
      t.date :date
      t.boolean :private
      t.text :learning
      t.references :achievment, index: true

      t.timestamps
    end
  end
end

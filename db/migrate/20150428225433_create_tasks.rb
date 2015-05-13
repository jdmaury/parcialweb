class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.date :initialdate
      t.date :enddate
      t.string :author
      t.boolean :checkbox
      t.integer :responsable
      t.timestamps
    end
  end
end

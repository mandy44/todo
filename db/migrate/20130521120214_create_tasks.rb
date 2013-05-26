class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, :null => falsez
      t.datetime :deadline
      t.boolean :is_finished, :null => false, :default => 0

      t.timestamps
    end
  end
end

class Fix < ActiveRecord::Migration[5.0]
  def up
    change_table :tasks do |t|
      t.remove :task_lists
      t.references :task_list, references: :task_list
    end
  end
  def down
    raise ActiveRecord::IrreversibleMigration, "Can't change references."
  end
end

class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :due_by
      t.boolean :complete
      
      t.references :board, references: :board

      t.timestamps
    end
  end
end

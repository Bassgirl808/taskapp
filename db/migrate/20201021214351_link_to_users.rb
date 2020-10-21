class LinkToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :boards do |b|
      b.references :user, references: :user
    end
    change_table :task_lists do |l|
      l.references :user, references: :user
    end
    change_table :tasks do |t|
      t.references :user, references: :user
    end
  end
end

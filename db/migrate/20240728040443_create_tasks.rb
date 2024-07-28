class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.text :title, null: false
      t.text :subtitle, null: true
      t.string :priority, default: 'low', null: false
      t.datetime :due_date, null: true
      t.timestamps
    end
  end
end

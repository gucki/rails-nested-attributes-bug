class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :planned_at, :null => false
    end

    create_table :todos do |t|
      t.references :task
      t.string :title
      t.datetime :planned_at, :null => false
    end
  end
end

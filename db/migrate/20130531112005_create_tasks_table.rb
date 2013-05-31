class CreateTasksTable < ActiveRecord::Migration

  create_table :tasks do |t|
    t.string    :description
    t.datetime  :completed_at
    t.integer   :list_id
    t.timestamps
  end

end

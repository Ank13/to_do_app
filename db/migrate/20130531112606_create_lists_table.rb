class CreateListsTable < ActiveRecord::Migration

  create_table :lists do |t|
    t.string    :name
    t.timestamps
  end

end

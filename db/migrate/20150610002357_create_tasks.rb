class CreateTasks < ActiveRecord::Migration
    def change
        create_table :tasks do |t|
            t.string :title, limit: 80
            t.boolean :completed

            t.timestamps null: false
        end
    end
end

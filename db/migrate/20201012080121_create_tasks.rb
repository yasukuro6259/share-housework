class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string       :task,                     null: false
      t.text         :description,              null: false     
      t.references   :user, foreign_key: true,  null: false
      t.references   :group, foreign_key: true, null: false
      t.timestamps
    end
  end
end

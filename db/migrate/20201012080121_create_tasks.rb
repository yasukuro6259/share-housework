class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string       :content,                  null: false
      t.text         :description                   
      t.references   :user, foreign_key: true,  null: false
      t.references   :group, foreign_key: true, null: false
      t.timestamps
    end
  end
end

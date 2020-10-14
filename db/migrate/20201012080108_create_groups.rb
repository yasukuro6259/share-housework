class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string      :content,                 null: false
      t.references  :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end

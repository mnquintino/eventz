class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :event, null: false, foreing_key: true
      t.references :user, null: false, foreing_key: true

      t.timestamps
    end
  end
end

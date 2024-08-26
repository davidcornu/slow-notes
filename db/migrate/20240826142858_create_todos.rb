class CreateTodos < ActiveRecord::Migration[7.2]
  def change
    create_table :todos do |t|
      t.string :body, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

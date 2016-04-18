class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :memoable_type
      t.integer :memoabole_id
      t.string :body

      t.timestamps null: false
    end
  end
end

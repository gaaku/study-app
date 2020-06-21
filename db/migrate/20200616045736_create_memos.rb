class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.string :body
      t.integer :date

      t.timestamps
    end
  end
end

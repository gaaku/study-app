class AddTimeToMemos < ActiveRecord::Migration[5.0]
  def change
    add_column :memos, :time, :string
  end
end

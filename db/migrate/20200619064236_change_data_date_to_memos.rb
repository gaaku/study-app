class ChangeDataDateToMemos < ActiveRecord::Migration[5.0]
  def change
    change_column :memos, :date, :string
  end
end

class DropExtraTables < ActiveRecord::Migration[4.2]
  def change
    if table_exists? :answers
      drop_table :answers
    end
    if table_exists? :questions
      drop_table :questions
    end
    if table_exists? :surveys
      drop_table :surveys
    end
  end
end

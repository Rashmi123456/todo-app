class AddStatusToTodo < ActiveRecord::Migration[5.0]
  def change
  			add_column :todos, :status, :string
  end
end

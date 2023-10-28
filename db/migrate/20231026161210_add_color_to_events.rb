class AddColorToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :color, :string
  end
end

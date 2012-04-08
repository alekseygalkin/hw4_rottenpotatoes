class AddDirectors < ActiveRecord::Migration
  def up
    add_column :movies, :director, :string, :default => "Unknown"
  end

  def down
  end
end

class AddTechToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :tech, :string
  end
end

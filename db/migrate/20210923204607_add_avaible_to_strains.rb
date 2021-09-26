class AddAvaibleToStrains < ActiveRecord::Migration[5.2]
  def change
    add_column :strains, :avaible, :boolean, default: true 
  end
end

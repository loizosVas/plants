class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
  	rename_column :plants, :max_preffered_pH, :max_preferred_pH
  end
end

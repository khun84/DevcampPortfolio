class ChangePortfolioTableName < ActiveRecord::Migration[5.1]
  def up
    rename_table :porfolios, :portfolios
  end

  def down
    rename_table :portfolios, :porfolios
  end
end

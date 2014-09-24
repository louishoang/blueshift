class AddYearToShowsDeleteRunningDates < ActiveRecord::Migration
  def change
    add_column :shows, :year, :integer
    remove_column :shows, :running_dates
  end
end

class AddTimelineToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :set_in, :date
  end
end

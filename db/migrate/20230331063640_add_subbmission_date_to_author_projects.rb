class AddSubbmissionDateToAuthorProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :author_projects, :submission_date, :date
  end
end

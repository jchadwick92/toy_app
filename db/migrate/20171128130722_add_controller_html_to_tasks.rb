class AddControllerHtmlToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :controller_html, :text
  end
end

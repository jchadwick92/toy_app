class Task < ApplicationRecord
  belongs_to :user, required: false

  validates :user_id, presence: true
  validates :controller, presence: true

  auto_html_for :controller do
    html_escape
    image
    youtube(:width => "100%", :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end

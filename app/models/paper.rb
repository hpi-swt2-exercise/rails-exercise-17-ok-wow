class Paper < ActiveRecord::Base
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, format: { with: /\A\d{4}\z/ }
end

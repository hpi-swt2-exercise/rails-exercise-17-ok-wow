class Paper < ActiveRecord::Base
  has_and_belongs_to_many :authors
  scope :from_year, ->(year) { where("year = ?", year) }
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, format: { with: /\A\d{4}\z/ }
end

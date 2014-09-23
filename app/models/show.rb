class Show < ActiveRecord::Base
  has_many :reviews
  belongs_to :genre

  validates :name,
    presence: true, uniqueness: true
  validates :description,
    presence: true
  validates :genre_id,
    presence: true
end

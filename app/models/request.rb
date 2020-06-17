class Request < ApplicationRecord
  belongs_to :user
  has_many :matchs, dependent: :destroy

  validates :date, :time, :location, presence: true
end

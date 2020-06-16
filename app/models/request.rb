class Request < ApplicationRecord
  belongs_to :user

  validates :date, :time, :location, presence: true
end

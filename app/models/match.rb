class Match < ApplicationRecord
  belongs_to :requests
  belongs_to :users
end

class Comment < ApplicationRecord
  belongs_to :drone
  belongs_to :user
end

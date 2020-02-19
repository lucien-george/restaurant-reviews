class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # @restaurnt.reviews
end

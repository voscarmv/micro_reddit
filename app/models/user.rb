class User < ApplicationRecord
  validates :name, presence: {message: "A ha! Nameless? I don't think so." }, length: {in: 6..24, too_short: "You fool! It's too short or long;" }
  has_many :post
end

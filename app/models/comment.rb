class Comment < ApplicationRecord
  validates :body,
    presence: {
      message: "You MUST write SOMETHINGG??"
    },
    length: {
      maximum: 5000,
      too_long: "Too long, man."
    }
    belongs_to :user
    belongs_to :post
end

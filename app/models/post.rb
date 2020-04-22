class Post < ApplicationRecord
  validates :title,
    presence: {
      message: "A post needs a title"
    },
    length:  {
      maximum: 200,
      too_long: "This is not the body of your article"
    }

  validates :body,
    presence: {
      message: "You can't have an empty post"
    },
    length: {
      maximum: 20000,
      too_long: "Your post is too big"
    }
  belongs_to :user
  has_many :comment
end

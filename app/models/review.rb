class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
              less_than_or_equal_to: 5
            }

  def rating_stars
    return_string = ''
    rating.times { return_string << "\u{2B50}" }
    return_string
  end
end

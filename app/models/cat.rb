class Cat < ApplicationRecord
  COLORS = ['blue', 'green', 'red', 'purple', 'black', 'white', 'albino']
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: {in: ["M", "F"]}
  #ADD COLORS
  validates :color, inclusion: {in: COLORS}

  has_many :cat_rental_requests,
    dependent: :destroy

  def age
    year = Time.now.year
    year - birth_date.year
  end

  def self.cat_colors
    COLORS
  end
end

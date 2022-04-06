class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}

  validates :annual_revenue, numericality: { greater_than: 0 }

  validate :must_have_mens_or_womens_apparel

  def must_have_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:must_have_mens_or_womens_apparel, "mens_apparel and womens_apparel can not both be false")
    end
  end

end

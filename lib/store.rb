class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum:3}
  validates :annual_revenue, length: {only_integer: true, minimum:0}
  validate :at_least_one_apprel


  def at_least_one_apprel
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel, "can't be both false")
    end
  end

end


class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }    


  scope :relevant, -> { where("expiration_date > ? ", DateTime.now) }
  scope :expired, -> { where("expiration_date < ? ", DateTime.now) }

  STATUS = {
   relevant: "Relevant",
   expired: "Expired",
   }

end
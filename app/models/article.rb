class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }    
  
  enum state: [:relevant, :expired, :closed]

  # def self.get_by_state(state)
  #   self.all.select do |article|
  #       article.state == state
  #   end
  # end

  scope :relevant, -> { where("expiration_date >= ? ", DateTime.now) }
  scope :expired, -> { where("expiration_date < ? ", DateTime.now) }

end

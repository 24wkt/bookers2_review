class Book < ApplicationRecord
  belongs_to :user

  validates :user_name, uniqueness: true, length: { in: 2..20 }
  validates :introduction, length: { maximum: 50 }
end

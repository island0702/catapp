class Post < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :description, presence: true

  belongs_to :user
  has_one_attached :image

  validates unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

end

class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: :true, uniqueness: :true

  mount_uploader :picture, PhotoUploader

  def back_image
    if picture.present?
      picture
    else
      'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1586&q=80'
    end
  end
end

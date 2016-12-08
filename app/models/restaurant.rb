class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader

  searchkick

  has_many :reviews

  validates :name, :address, :phone, :website, :image, presence: true

  validates :phone, format: { with: /\A\(\+\d{2}\) \d{3}\-\d{3}\-\d{3}\z/,
    message: "must be in the format (+48) 111-222-333"
  }

  validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
    message: "must start with http:// or https://" }

  validates :address, format: { with: /\Aul\.\D+[^\s\d]\s\d+\,\s\d{5}\s\D+\z/,
    message: "must be in the format ul.Nazwa ulicy 22, 00199 Warszawa"
  }


end

class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  default_scope { where(visibility: true).order(:created_at) }

  has_many :images
  has_many :prints, -> {printable}, class_name: "Image"
  has_many :photos, -> {photo}, class_name: "Image"
  has_many :videostills, -> {videostill}, class_name: "Image"
end

class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  scope :ordered, -> { where(visibility: true).order(:project_order) }

  has_many :images
  has_many :prints, -> {printable}, class_name: "Image"
  has_many :photos, -> {photo}, class_name: "Image"
  has_many :videostills, -> {videostill}, class_name: "Image"

  def next
    self.class.where("project_order > ? AND visibility = true", project_order).first
  end

  def previous
    self.class.where("project_order < ? AND visibility = true", project_order).last
  end
end

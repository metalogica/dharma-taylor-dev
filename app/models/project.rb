class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  scope :ordered, -> { where(visibility: true).order(:project_order) }

  has_many :images
  has_many :photos, -> {photo}, class_name: "Image"
  has_many :portrait_photos, -> {photo.portrait}, class_name: "Image"
  has_many :landscape_photos, -> {photo.landscape}, class_name: "Image"
  has_many :prints, -> {printable}, class_name: "Image"
  has_many :videostills, -> {videostill}, class_name: "Image"

  # Admin upload photo capability
  mount_uploaders :user_upload, UserUploadUploader

  def next
    self.class.ordered.where("project_order > ? AND visibility = true", project_order).first
  end

  def previous
    self.class.ordered.where("project_order < ? AND visibility = true", project_order).last
  end
end

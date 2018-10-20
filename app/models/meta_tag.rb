class MetaTag < ApplicationRecord
  validates_presence_of :page,
                        :title,
                        :keywords,
                        :description
  # validates :description, length: { maximum: 200 }

  def to_label
    page
  end
end

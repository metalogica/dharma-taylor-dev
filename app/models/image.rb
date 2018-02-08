class Image < ApplicationRecord
  belongs_to :project

  enum nature: [ :photo, :printable, :videostill, :archive ]
end

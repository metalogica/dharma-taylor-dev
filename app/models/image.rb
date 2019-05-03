class Image < ApplicationRecord
  belongs_to :project

  enum format: [ :landscape, :portrait ]
  enum nature: [ :photo, :printable, :videostill, :archive ]

end

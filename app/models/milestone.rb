class Milestone < ActiveRecord::Base
  validates :infant_id, :presence =>true
  mount_uploader :photo, PhotoUploader
  belongs_to :infant , :class_name => "Infant", :foreign_key => "infant_id"

end

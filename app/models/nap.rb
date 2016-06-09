class Nap < ActiveRecord::Base
  validates :infant_id, :presence =>true

  belongs_to :infant , :class_name => "Infant", :foreign_key => "infant_id"

end

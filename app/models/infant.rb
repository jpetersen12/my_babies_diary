class Infant < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :user_account_id }

  mount_uploader :image, ImageUploader
  belongs_to :user_account

  has_many :naps , :class_name => "Nap", :foreign_key => "infant_id"

  has_many :feedings , :class_name => "Feeding", :foreign_key => "infant_id"

  has_many :milestones , :class_name => "Milestone", :foreign_key => "infant_id"



end

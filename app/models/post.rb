class Post < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  belongs_to :account
  scope :active, -> {where active: true}
  before_create :set_active

  def set_active
    self.active = true
  end
end

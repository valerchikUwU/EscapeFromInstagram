class Post < ApplicationRecord



  before_create :set_active
  default_scope { order created_at: :desc }
  scope :active, -> { where active: true }

  include ImageUploader::Attachment.new(:image)

  belongs_to :account
  has_many :likes


  def total_likes
    0
  end

  def set_active
    self.active = true
  end
end

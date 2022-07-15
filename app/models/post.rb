class Post < ApplicationRecord



  before_create :set_active
  default_scope { order created_at: :desc }
  scope :active, -> { where active: true }

  include ImageUploader::Attachment.new(:image)

  belongs_to :account
  has_many :likes, dependent: :destroy
  has_many :comments




  def set_active
    self.active = true
  end
end

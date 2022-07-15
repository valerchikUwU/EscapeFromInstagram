module AccountsHelper

  def profile_picture account, width = 200
    image_path = account.image.present? ? account.image.url : 'place.png'
    image_tag(image_path, width: width, class: 'img-circle')
  end

  def can_edit_profile? profile_id
    account_signed_in? && current_account.id == profile_id
  end
end

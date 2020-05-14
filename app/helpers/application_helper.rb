module ApplicationHelper

  def profile_picture account
    img = account.image.attached? ? account.image.variant(resize: '100x100x') : "placeholder-person.png"
    image_tag img, class: "account-thumb image-circle"
  end
end

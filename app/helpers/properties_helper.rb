module PropertiesHelper

  def property_thumbnail property
    img = property.photo.attached? ? property.photo.variant(resize: '300x350x') : "placeholder.png"
    image_tag img, class: "property-thumb"
  end

  def property_thumbnail_url property
    property.photo.attached? ? url_for(property.photo) : "placeholder.png"
  end

  def property_photo_url property
    property.photo.attached? ? url_for(property.photo) : asset_url("placeholder.png")
  end
end

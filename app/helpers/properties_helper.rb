module PropertiesHelper

  def property_thumbnail property
    img = property.photo.attached? ? property.photo.variant(resize: '300x350x') : "placeholder.png"
    image_tag img, class: "property-thumb"
  end
end

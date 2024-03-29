module ApplicationHelper
  
  def commenter_url(id)
    commenter = controller.controller_name.singularize
    comments_path(:commenter_type => commenter, :commenter_id => id)
  end
  
  def lat_lng
    @lat_lng ||= session[:lat_lng] ||= get_geolocation_data_the_hard_way
  end
  
  def count_display(value, string)
    if value == 0
      return string
    else
      return value
    end
  end
  
  def number_format_k(value)
    number_to_human(value, precision: 1, separator: ',', significant: false, format: '%n%u', units: { thousand: 'K' })
  end
  
end

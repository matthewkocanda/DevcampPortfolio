module PortfoliosHelper
  def portfolio_img img, type
    if img.model.main_image? || img.model.thumb?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end

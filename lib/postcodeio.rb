require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

class PostCodesio
  def single_postcode_service
    SinglePostcodeService.new
  end
  
  def multiple_postcode_service(i)
    MultiplePostcodeService.new(i)
  end



end

postcode_api = PostCodesio.new

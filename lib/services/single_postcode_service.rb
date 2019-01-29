require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  # include base url
  base_uri 'https://api.postcodes.io'

  def single_postcode_request(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def print_results
    print @single_postcode_data
  end
  
  def retrive_status_code
    @single_postcode_data['status']
  end
  
  def retrive_result
    @single_postcode_data['result']
  end
  
  def retrive_postcode
    retrive_result['postcode']
  end

  def retrive_quality
    retrive_result['quality']
  end

  def retrive_easting
    retrive_result['eastings']
  end

  def retrive_northings
    retrive_result['northings']
  end

  def retrive_country
    retrive_result['country']
  end

  def retrive_nhs_ha
    retrive_result['nhs_ha']
  end

  def retrive_primary_care_trust
    retrive_result['primary_care_trust']
  end
 
  def retrive_longitude
    retrive_result['longitude']
  end
 
  def retrive_latitude
    retrive_result['latitude']
  end
 
  def retrive_european_electoral_region
    retrive_result['european_electoral_region']
  end
 
  def retrive_lsoa
    retrive_result['lsoa']
  end
 
  def retrive_msoa
    retrive_result['msoa']
  end
 
  def retrive_incode
    retrive_result['incode']
  end
 
  def retrive_outcode
    retrive_result['outcode']
  end
 
  def retrive_parliamentary_constituency
    retrive_result['parliamentary_constituency']
  end
 
  def retrive_admin_district
    retrive_result['admin_district']
  end
 
  def retrive_parish
    retrive_result['parish']
  end
 
  def retrive_admin_county
    retrive_result['admin_county']
  end
 
  def retrive_admin_ward
    retrive_result['admin_ward']
  end
 
  def retrive_admin_ccg
    retrive_result['ccg']
  end
 
  def retrive_nuts
    retrive_result['nuts']
  end
 
  def retrive_codes
    retrive_result['codes']
  end
 
  def retrive_codes_admin_district
    retrive_codes['admin_district']
  end
 
  def retrive_codes_admin_county
    retrive_codes['admin_county']
  end
 
  def retrive_codes_admin_ward
    retrive_codes['admin_ward']
  end
 
  def retrive_codes_parish
    retrive_codes['parish']
  end
 
  def retrive_codes_parliamentary_constituency
    retrive_codes['parliamentary_constituency']
  end
 
  def retrive_codes_ccg
    retrive_codes['ccg']
  end
 
  def retrive_codes_ced
    retrive_codes['ced']
  end
 
  def retrive_codes_nuts
    retrive_codes['nuts']
  end

end

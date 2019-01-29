require 'spec_helper'

describe PostCodesio do

  context 'requestiong information from the single service works correctly' do 

    before(:all) do 
      @single_postcode_service = PostCodesio.new.single_postcode_service
      @single_postcode_service.single_postcode_request('B601JA')
    end

    
    it 'respond with a status code of 200' do
      expect(@single_postcode_service.retrive_status_code).to eq 200
    end

    it 'should give data in a hash' do
      expect(@single_postcode_service.retrive_result).to be_kind_of(Hash)
    end

    it 'should correctly give postcode' do
      expect(@single_postcode_service.retrive_postcode).to be_kind_of(String)
      expect(@single_postcode_service.retrive_postcode.length).to be <= 8
    end

    it 'should correctly display quality' do
      expect(@single_postcode_service.retrive_quality).to be_kind_of(Integer)
    end

    it 'should correctly give easting coordinates' do
      expect(@single_postcode_service.retrive_easting).to be_kind_of(Integer)
    end

    it 'should correctly give westing northings' do
      expect(@single_postcode_service.retrive_northings).to be_kind_of(Integer)
    end

    it 'should correctly give country from UK' do
      expect(@single_postcode_service.retrive_country).to be_kind_of(String)
      expect(@single_postcode_service.retrive_country).to satisfy { |value| ['England', 'Wales', 'Nother Ireland', 'Scotland'].include?(value) }
    end
    
    it 'correctly do NHS_HA' do
      expect(@single_postcode_service.retrive_nhs_ha).to be_kind_of(String)
    end

    it 'should correctly give longitute coordinates from the postcode location' do
      expect(@single_postcode_service.retrive_longitude).to be_kind_of(Float)
    end
    
    it 'should correctly give latitude coordinates from the postcode location' do
      expect(@single_postcode_service.retrive_latitude).to be_kind_of(Float)
    end

    it 'should correctly give the european electoral region of the postcode' do
      expect(@single_postcode_service.retrive_european_electoral_region).to be_kind_of(String)
    end

    it 'should give lsao' do
      expect(@single_postcode_service.retrive_lsoa).to be_kind_of(String)
    end

    it 'should give msao' do
      expect(@single_postcode_service.retrive_msoa).to be_kind_of(String)
    end

    it 'should correctly show the indcode of the postcode' do
      expect(@single_postcode_service.retrive_incode).to be_kind_of(String)
      expect(@single_postcode_service.retrive_incode.length).to be <= 4

    end

    it 'should correctly give the outcode of the postcode' do
      expect(@single_postcode_service.retrive_outcode).to be_kind_of(String)
      expect(@single_postcode_service.retrive_incode.length).to be <= 4

    end

    it 'should correctly retrive parliamentary constituency' do
      expect(@single_postcode_service.retrive_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should correctly retrive admin district' do
      expect(@single_postcode_service.retrive_admin_district).to be_kind_of(String)
    end

    it 'should correctly retrive parish' do
      expect(@single_postcode_service.retrive_parish).to be_kind_of(String)
    end

    it 'should correctly retrive admin county' do
      expect(@single_postcode_service.retrive_admin_county).to be_kind_of(String)
    end

    it 'should correctly retrive admin ward' do
      expect(@single_postcode_service.retrive_admin_ward).to be_kind_of(String)
    end

    it 'should correctly retrive admin ccg' do
      expect(@single_postcode_service.retrive_admin_ccg).to be_kind_of(String)
    end

    it 'should correctly retrive nuts' do
      expect(@single_postcode_service.retrive_nuts).to be_kind_of(String)
    end

    it 'retrive codes' do
      expect(@single_postcode_service.retrive_codes).to be_kind_of(Hash)
    end

    it 'should correclty retrive codes admin district' do
      expect(@single_postcode_service.retrive_codes_admin_district).to be_kind_of(String)
    end

    it 'should correctly retrive codes admin county' do
      expect(@single_postcode_service.retrive_codes_admin_county).to be_kind_of(String)
    end

    it 'should correcly retrive codes admin ward' do
      expect(@single_postcode_service.retrive_codes_admin_ward).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_admin_county' do
      expect(@single_postcode_service.retrive_codes_admin_county).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_admin_ward' do
      expect(@single_postcode_service.retrive_codes_admin_ward).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_parish' do
      expect(@single_postcode_service.retrive_codes_parish).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_parliamentary_constituency' do
      expect(@single_postcode_service.retrive_codes_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should correctly retrive_codes_ccg' do
      expect(@single_postcode_service.retrive_codes_ccg).to be_kind_of(String)
    end

    it 'should correctly retrive_codes_ced' do
      expect(@single_postcode_service.retrive_codes_ced).to be_kind_of(String)
    end

    it 'shold correctly retrive_codes_nuts' do
      expect(@single_postcode_service.retrive_codes_nuts).to be_kind_of(String)
    end
  end

end
require 'spec_helper'

describe PostCodesio do

  context 'requestiong information from multiple services works correctly second postcode' do 

    before(:all) do 
      @multiple_postcode_service2 = PostCodesio.new.multiple_postcode_service(1)
      @multiple_postcode_service2.multiple_postcode_request(["W128BA", "NW22NA"])
    end

    it 'respond with a status code of 200' do
      expect(@multiple_postcode_service2.retrive_status_code).to eq 200
    end

    it 'should give data in a hash' do
      expect(@multiple_postcode_service2.retrive_result).to be_kind_of(Hash)
    end

    it 'should correctly give postcode' do
      p @multiple_postcode_service2.retrive_postcode
      expect(@multiple_postcode_service2.retrive_postcode).to be_kind_of(String)
      expect(@multiple_postcode_service2.retrive_postcode.length).to be <= 8

    end

    it 'should correctly display quality' do
      expect(@multiple_postcode_service2.retrive_quality).to be_kind_of(Integer)
    end

    it 'should correctly give easting coordinates' do
      expect(@multiple_postcode_service2.retrive_easting).to be_kind_of(Integer)
    end

    it 'should correctly give westing northings' do
      expect(@multiple_postcode_service2.retrive_northings).to be_kind_of(Integer)
    end

    it 'should correctly give country from UK' do
      expect(@multiple_postcode_service2.retrive_country).to be_kind_of(String)
      expect(@multiple_postcode_service2.retrive_country).to satisfy { |value| ['England', 'Wales', 'Nother Ireland', 'Scotland'].include?(value) }
    end
    
    it 'correctly do NHS_HA' do
      expect(@multiple_postcode_service2.retrive_nhs_ha).to be_kind_of(String)
    end

    it 'should correctly give longitute coordinates from the postcode location' do
      expect(@multiple_postcode_service2.retrive_longitude).to be_kind_of(Float)
    end
    
    it 'should correctly give latitude coordinates from the postcode location' do
      expect(@multiple_postcode_service2.retrive_latitude).to be_kind_of(Float)
    end

    it 'should correctly give the european electoral region of the postcode' do
      expect(@multiple_postcode_service2.retrive_european_electoral_region).to be_kind_of(String)
    end

    it 'should give lsao' do
      expect(@multiple_postcode_service2.retrive_lsoa).to be_kind_of(String)
    end

    it 'should give msao' do
      expect(@multiple_postcode_service2.retrive_msoa).to be_kind_of(String)
    end

    it 'should correctly show the indcode of the postcode' do
      expect(@multiple_postcode_service2.retrive_incode).to be_kind_of(String)
      expect(@multiple_postcode_service2.retrive_incode.length).to be <= 4

    end

    it 'should correctly give the outcode of the postcode' do
      expect(@multiple_postcode_service2.retrive_outcode).to be_kind_of(String)
      expect(@multiple_postcode_service2.retrive_outcode.length).to be <= 4

    end

    it 'should correctly retrive parliamentary constituency' do
      expect(@multiple_postcode_service2.retrive_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should correctly retrive admin district' do
      expect(@multiple_postcode_service2.retrive_admin_district).to be_kind_of(String)
    end

    it 'should correctly retrive parish' do
      expect(@multiple_postcode_service2.retrive_parish).to be_kind_of(String)
    end

    it 'should correctly retrive admin ward' do
      expect(@multiple_postcode_service2.retrive_admin_ward).to be_kind_of(String)
    end

    it 'should correctly retrive admin ccg' do
      expect(@multiple_postcode_service2.retrive_admin_ccg).to be_kind_of(String)
    end

    it 'should correctly retrive nuts' do
      expect(@multiple_postcode_service2.retrive_nuts).to be_kind_of(String)
    end

    it 'retrive codes' do
      expect(@multiple_postcode_service2.retrive_codes).to be_kind_of(Hash)
    end

    it 'should correclty retrive codes admin district' do
      expect(@multiple_postcode_service2.retrive_codes_admin_district).to be_kind_of(String)
    end

    it 'should correctly retrive codes admin county' do
      expect(@multiple_postcode_service2.retrive_codes_admin_county).to be_kind_of(String)
    end

    it 'should correcly retrive codes admin ward' do
      expect(@multiple_postcode_service2.retrive_codes_admin_ward).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_admin_county' do
      expect(@multiple_postcode_service2.retrive_codes_admin_county).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_admin_ward' do
      expect(@multiple_postcode_service2.retrive_codes_admin_ward).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_parish' do
      expect(@multiple_postcode_service2.retrive_codes_parish).to be_kind_of(String)
    end

    it 'should correcly retrive_codes_parliamentary_constituency' do
      expect(@multiple_postcode_service2.retrive_codes_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should correctly retrive_codes_ccg' do
      expect(@multiple_postcode_service2.retrive_codes_ccg).to be_kind_of(String)
    end

    it 'should correctly retrive_codes_ced' do
      expect(@multiple_postcode_service2.retrive_codes_ced).to be_kind_of(String)
    end

    it 'shold correctly retrive_codes_nuts' do
      expect(@multiple_postcode_service2.retrive_codes_nuts).to be_kind_of(String)
    end

  end

end
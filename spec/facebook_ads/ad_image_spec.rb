require 'spec_helper'

describe FacebookAds::AdImage do
  describe '.ad_images'
    it 'lists ad images'
      account = FacebookAds::AdAccount.find_by(name: 'ReFuel4')
      ad_images = account.ad_images(hashes: %w(a9e27630331b8ca2ebac1bb8619c98eb 037b8f4f2383f45f35b110cf72c46f0b))
      assert_equal 2, ad_images.length
    end
  end

  # def test_create
  #   vcr do
  #     account = FacebookAds::AdAccount.find_by(name: 'ReFuel4')
  #     ad_images = account.create_ad_images(['https://img0.etsystatic.com/108/1/13006112/il_570xN.1047856494_l2gp.jpg'])
  #     ad_image = ad_images.first
  #     assert_equal '1132789356764349:287ecd37223004c301f5df4e4d02bbe2', ad_image.id
  #     assert_equal '287ecd37223004c301f5df4e4d02bbe2', ad_image.hash
  #     assert_equal '1132789356764349', ad_image.account_id
  #     assert_equal '13006112.jpg', ad_image.name
  #     assert ad_image.permalink_url.include?('https://www.facebook.com/ads/image/?d=')
  #     assert_equal 570, ad_image.original_width
  #     assert_equal 707, ad_image.original_height
  #   end
  # end
end

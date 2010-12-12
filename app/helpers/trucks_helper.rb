module TrucksHelper
  def truck_links_for(truck)
    [].tap { |links|
      if truck.twitter_username.present?
        links << link_to("@#{truck.twitter_username}",
          "http://twitter.com/#{truck.twitter_username}")
      end

      if truck.website.present?
        links << link_to("website", truck.website)
      end

      if truck.facebook_url.present?
        links << link_to("Facebook", truck.facebook_url)
      end
    }.to_sentence(:two_words_connector => " &amp; ",
      :last_word_connector => " &amp; " )
  end
end
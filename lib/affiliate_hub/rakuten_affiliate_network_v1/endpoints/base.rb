module AffiliateHub
  module RakutenAffiliateNetworkV1
    module Endpoints
      class Base < AffiliateHub::Endpoint

        include AffiliateHub::RakutenAffiliateNetworkV1::ApiAccess

        def call(request_params={})
          request_params = { headers: { "Authorization" => bearer_token }}.merge(request_params)
          connection.class.get(full_uri, request_params)
        end

      end
    end
  end
end


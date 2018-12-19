module AffiliateHub
  module RakutenAffiliateNetworkV1
    module ApiAccess

      private

      def bearer_token
        connection.settings.authorization_bearer_token
      end

    end
  end
end

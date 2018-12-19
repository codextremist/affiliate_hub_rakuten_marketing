module AffiliateHub
  module RakutenAffiliateNetworkV1
    module Endpoints
      class Authorization < AffiliateHub::Endpoint

        def call(request_params)
          connection.class.post(full_uri, headers: { 'Authorization' => basic_auth }, body: credentials)
        end

        private

        def credentials
          {
            username:   connection.settings.username,
            password:   connection.settings.password,
            scope:      connection.settings.scope,
            grant_type: 'password'
          }
        end

        def basic_auth
          connection.settings.authorization_basic_auth
        end

      end
    end
  end
end


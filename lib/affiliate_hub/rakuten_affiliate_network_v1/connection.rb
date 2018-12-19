module AffiliateHub
  module RakutenAffiliateNetworkV1
    class Connection < AffiliateHub::Connection

      def_endpoint :authorization,    "token"
      def_endpoint :events,           "events/1.0/transactions",  class: :Base
      def_endpoint :coupon,           "coupon/1.0",               class: :Base
      def_endpoint :advertisersearch, "advertisersearch/1.0",     class: :Base
      def_endpoint :linklocator,      "linklocator/1.0",          class: :Base
      def_endpoint :advanced_reports, "advanced_reports/1.0",     class: :Base

      def initialize(settings)
        @settings = settings
      end

    end
  end
end


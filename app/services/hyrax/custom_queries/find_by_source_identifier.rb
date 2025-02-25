# frozen_string_literal: true
module Hyrax 
  module CustomQueries
    # @example
    #   model = 'Publication'
    #   deduplication_key = 'jhqsdhdwhcolh'
    #
    #   Hyrax.query_service.custom_queries.find_by_model_and_property_value(model:, property: :deduplication_key, value: 'jhqsdhdwhcolh')
    #
    # @see https://github.com/samvera/valkyrie/wiki/Queries#custom-queries
    # adapted from 
    class FindBySourceIdentifier
      def self.queries
        [:find_by_model_and_property_value]
      end

      def initialize(query_service:)
        @query_service = query_service
        @connection = Hyrax.index_adapter.connection
      end

      attr_reader :query_service

      ##
      # @param model [Class, #internal_resource]
      # @param property [#to_s] the solr field we're querying
      # @param value [#to_s] the propety's value that we're trying to match.
      #
      # @return [NilClass] when no record was found
      # @return [Valkyrie::Resource] when a record was found
      def find_by_model_and_property_value(model:, property:, value:)
        @model = model
        @property = property
        @value = value

        return if resource.blank?
        @query_service.find_by(id: resource['id'])
      end

      # Queries Solr for a document that matches the provided key
      # @yield [Publication]
      def resource
        @connection.get("select", params: { q: query, fl: "*", rows: 1 })["response"]["docs"]&.first
      end

      # Solr query for for a Publication with a deduplication_key_tesi that matches the provided key
      # @return [Hash]
      def query
        "has_model_ssim:#{@model} && #{@property}:#{@value}"
      end
    end
  end
end


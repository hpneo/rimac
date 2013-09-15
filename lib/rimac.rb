# require 'rimac/version'
require 'net/http'
require 'uri'
require 'json'

module Rimac
  class API

    BASE_URL = "http://apisandbox.junar.com/datastreams/invoke/"

    attr_accessor :api_key

    def initialize(api_key)
      self.api_key = api_key
    end

    def get(resource)
      options = {}
      options[:output] = "json_array"

      url = url_for(resource, options)

      response = JSON.parse(Net::HTTP.get_response(URI.parse(url)).body)

      original_result = response["result"]
      headers = original_result.shift

      results = []

      original_result.each do |row|
        result = {}

        headers.each_index do |i|
          result[headers[i].to_s.downcase.gsub(" ", "_")] = row[i]
        end

        results << result
      end

      response["result"] = results

      response
    end

    private

    def url_for(resource, options = {})
      raise "API Key is required" if self.api_key.nil?

      url = BASE_URL + resource + "?auth_key=#{self.api_key}"

      options.each do |key, value|
        url = url + "&#{key}=#{value}"
      end

      url
    end

  end
end
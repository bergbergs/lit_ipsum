# frozen_string_literal: true

require 'lit_ipsum/version'

module LitIpsum
  SENTENCE_PATTERN = /(?=“*)[A-Z]+.{1,}?[\.\!\?](?=”*\s*)(?<!Mr.|Mrs.|Ms.|Dr.|St.|S.A.)/.freeze

  class Error < StandardError; end

  class Base
    class << self
      def get_text(filename)
        File.open(filename, 'r') do |file|
          return file.map(&:chomp)
                     .reject { |line| line.empty? || line.start_with?('#') }
                     .map { |line| line.delete('_') }
                     .join(' ')
                     .scan(SENTENCE_PATTERN)
                     .uniq
        end
      end

      def sentences(count, max_sentence, filename)
        source = max_sentence.zero? ? get_text(filename) : get_text(filename).select { |sentence| sentence.length <= max_sentence }
        raise Error, "Unable to find sentences of length <= #{max_sentence}." if source.empty?

        obj = []
        count.times do
          sentence = source.sample
          obj << sentence
        end

        obj.join(' ')
      end

      def words(count, filename)
        source = get_text(filename).select { |sentence| sentence.scan(/\w+/).size <= count }
        obj = []
        loop do
          obj << source.select { |sentence| sentence.scan(/\w+/).size <= count - obj.map { |el| el.scan(/\w+/) }.flatten.length }.sample
          break if obj.map { |el| el.scan(/\w+/) }.flatten.length == count
        end
        obj.join(' ')
      end
    end
  end
end

# require objects
Dir.glob(File.join(File.dirname(__FILE__), 'lit_ipsum', '/**/*.rb')).sort.each { |file| require file }

# frozen_string_literal: true

module LitIpsum
  class Austen
    class PrideAndPrejudice < Base
      FILENAME = File.join(File.dirname(File.expand_path(__FILE__)), '../../texts/austen/pride-and-prejudice.txt')

      class << self
        def sentences(count, max_sentence = 0, filename = FILENAME)
          super(count, max_sentence, filename)
        end

        def words(count, filename = FILENAME)
          super(count, filename)
        end
      end
    end
  end
  # Shorthand Alias
  PrideAndPrejudice = Austen::PrideAndPrejudice
end

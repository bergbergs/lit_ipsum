# frozen_string_literal: true

module LitIpsum
  class Austen
    class SenseAndSensibility < Base
      FILENAME = File.join(File.dirname(File.expand_path(__FILE__)), '../../texts/austen/sense-and-sensibility.txt')

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
  SenseAndSensibility = Austen::SenseAndSensibility
end

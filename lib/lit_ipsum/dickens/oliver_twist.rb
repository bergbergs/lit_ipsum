# frozen_string_literal: true

module LitIpsum
  class Dickens
    class OliverTwist < Base
      FILENAME = 'texts/dickens/oliver-twist.txt'

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
end

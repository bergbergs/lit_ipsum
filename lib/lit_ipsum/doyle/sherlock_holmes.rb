# frozen_string_literal: true

module LitIpsum
  class Doyle
    class SherlockHolmes < Base
      FILENAME = 'texts/doyle/the-adventures-of-sherlock-holmes.txt'

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

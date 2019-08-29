# frozen_string_literal: true

module LitIpsum
  class Doyle
    class SherlockHolmes < Base
      FILENAME = 'texts/doyle/the-adventures-of-sherlock-holmes.txt'

      class << self
        def sentences(count, max_sentence: 0, filename: FILENAME, repeats: nil)
          super(count, repeats: repeats, max_sentence: max_sentence, filename: filename)
        end

        def words(count, filename: FILENAME, repeats: nil)
          super(count, repeats: repeats, filename: filename)
        end
      end
    end
  end
end

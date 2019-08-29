# frozen_string_literal: true

module LitIpsum
  class Dickens
    class OliverTwist < Base
      FILENAME = 'texts/dickens/oliver-twist.txt'

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

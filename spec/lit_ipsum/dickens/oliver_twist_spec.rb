# frozen_string_literal: true

require 'lit_ipsum/dickens/oliver_twist'

RSpec.describe LitIpsum::Dickens::OliverTwist do
  context 'with repetition' do
    it 'generates litsum from sentences' do
      3.times do
        rand = (3..24).to_a.sample
        expect(LitIpsum::Dickens::OliverTwist.sentences(rand, repeats: rand).is_a?(String)).to eq(true)
      end
    end

    it 'generates litsum with correct amount of sentences' do
      3.times do
        rand = (1..12).to_a.sample
        expect(LitIpsum::Dickens::OliverTwist.sentences(rand, repeats: rand).scan(LitIpsum::SENTENCE_PATTERN).size).to eq(rand*rand)
      end
    end

    it 'includes only sentences under or equal to maximum size limit' do
      3.times do
        rand = (1..12).to_a.sample
        expect(LitIpsum::Dickens::OliverTwist.sentences(rand, repeats: rand, max_sentence: 5).scan(LitIpsum::SENTENCE_PATTERN).map(&:size).max).to be <= 5
      end
    end

    it 'generates litsum from words' do
      rand = (1..12).to_a.sample
      expect(LitIpsum::Dickens::OliverTwist.words(8, repeats: rand).is_a?(String)).to eq(true)
    end
  end

  context 'without repetition' do
    it 'generates litsum from sentences' do
      3.times do
        rand = (3..24).to_a.sample
        expect(LitIpsum::Dickens::OliverTwist.sentences(rand).is_a?(String)).to eq(true)
      end
    end

    it 'generates litsum with correct amount of sentences' do
      3.times do
        rand = (1..12).to_a.sample
        expect(LitIpsum::Dickens::OliverTwist.sentences(rand).scan(LitIpsum::SENTENCE_PATTERN).size).to eq(rand)
      end
    end

    it 'includes only sentences under or equal to maximum size limit' do
      3.times do
        rand = (1..12).to_a.sample
        expect(LitIpsum::Dickens::OliverTwist.sentences(rand,max_sentence: 5).scan(LitIpsum::SENTENCE_PATTERN).map(&:size).max).to be <= 5
      end
    end

    it 'generates litsum from words' do
      expect(LitIpsum::Dickens::OliverTwist.words(8).is_a?(String)).to eq(true)
    end
  end
end

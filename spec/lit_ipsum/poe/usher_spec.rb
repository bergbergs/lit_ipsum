# frozen_string_literal: true

require 'lit_ipsum/poe/usher'

RSpec.describe LitIpsum::Poe::Usher do
  context 'with repetition' do
    it 'generates litsum from sentences' do
      3.times do
        rand = (3..24).to_a.sample
        expect(LitIpsum::Poe::Usher.sentences(rand, repeats: rand).is_a?(String)).to eq(true)
      end
    end

    it 'generates litsum with correct amount of sentences' do
      3.times do
        rand = (1..12).to_a.sample
        expect(LitIpsum::Poe::Usher.sentences(rand, repeats: rand).scan(LitIpsum::SENTENCE_PATTERN).size).to eq(rand * rand)
      end
    end

    it 'includes only sentences under or equal to maximum size limit' do
      3.times do
        rand = (1..12).to_a.sample
        expect { LitIpsum::Poe::Usher.sentences(rand, repeats: rand, max_sentence: 5) }.to raise_error(LitIpsum::Error)
      end
    end

    it 'generates litsum from words' do
      rand = (1..12).to_a.sample
      expect(LitIpsum::Poe::Usher.words(8, repeats: rand).is_a?(String)).to eq(true)
    end
  end

  context 'without repetition' do
    it 'generates litsum from sentences' do
      3.times do
        rand = (3..24).to_a.sample
        expect(LitIpsum::Poe::Usher.sentences(rand).is_a?(String)).to eq(true)
      end
    end

    it 'generates litsum with correct amount of sentences' do
      3.times do
        rand = (1..12).to_a.sample
        expect(LitIpsum::Poe::Usher.sentences(rand).scan(LitIpsum::SENTENCE_PATTERN).size).to eq(rand)
      end
    end

    it 'includes only sentences under or equal to maximum size limit' do
      3.times do
        rand = (1..12).to_a.sample
        expect { LitIpsum::Poe::Usher.sentences(rand, max_sentence: 5) }.to raise_error(LitIpsum::Error)
      end
    end

    it 'generates litsum from words' do
      expect(LitIpsum::Poe::Usher.words(8).is_a?(String)).to eq(true)
    end
=======
      expect { LitIpsum::Usher.sentences(rand, 5) }.to raise_error(LitIpsum::Error)
    end
  end

  it 'generates litsum from words' do
    expect(LitIpsum::Usher.words(8).is_a?(String)).to eq(true)
>>>>>>> 0b21989c42f50d58877699b9a2222139a9c6b1df
  end
end

# frozen_string_literal: true

require 'lit_ipsum/poe/raven'

RSpec.describe LitIpsum::Poe::Raven do
  it 'generates litsum from sentences' do
    3.times do
      rand = (3..24).to_a.sample
      expect(LitIpsum::Poe::Raven.sentences(rand).is_a?(String)).to eq(true)
    end
  end

  it 'generates litsum with correct amount of sentences' do
    3.times do
      rand = (1..12).to_a.sample
      expect(LitIpsum::Poe::Raven.sentences(rand).scan(LitIpsum::SENTENCE_PATTERN).size).to eq(rand)
    end
  end

  it 'includes only sentences under or equal to maximum size limit' do
    3.times do
      rand = (1..12).to_a.sample
      expect { LitIpsum::Poe::Raven.sentences(rand, 5) }.to raise_error(LitIpsum::Error)
    end
  end

  it 'generates litsum from words' do
    expect(LitIpsum::Poe::Raven.words(8).is_a?(String)).to eq(true)
  end
end

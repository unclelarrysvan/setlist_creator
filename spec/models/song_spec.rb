require 'spec_helper'

describe Song do
  describe 'Calculating totals' do
    it 'determines total length' do
      songs = []
      2.times {songs << FactoryGirl.create(:song)}
      Song.calculate_total_length(songs).should eq '7:04'
    end
  end
end

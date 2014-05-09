require 'spec_helper'

describe Song do
  describe 'Calculating totals' do
    it 'determines total length' do
      song1 = FactoryGirl.create :song
      song2 = FactoryGirl.create :song
      songs = [song1, song2]
      Song.calculate_total_length(songs).should eq '7:04'
    end
  end
end

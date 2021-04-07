
require 'rails_helper'

RSpec.describe Artist, type: :model do
  it { expect(described_class.new).to validate_presence_of :name }
  it { expect(described_class.new).to validate_presence_of :description }
  it { expect(described_class.new).to validate_presence_of :year_founded }
  it { expect(described_class.new).to validate_length_of :description }

  describe "#methods" do
    describe "#disband" do
      context "when the Artist is already disbanded" do
        let!(:artist) { FactoryBot.create(:disbanded_artist) }
        let!(:album) { FactoryBot.create(:album, artist: artist) }

        it "should not update the artist fields" do
          expect(artist.disband).to be_nil
        end
      end

      context "when the Artist is not yet disbanded" do
        let!(:artist) { FactoryBot.create(:artist) }

        it "should update the artist fields for disabanded and disbanded_at" do
          artist.disband

          expect(artist.disbanded).to be_truthy
          expect(artist.disbanded_at).to be_present
        end
      end
    end
  end
end


require 'rails_helper'

RSpec.describe Artist, type: :model do
  it { expect(described_class.new).to validate_presence_of :name }
  it { expect(described_class.new).to validate_presence_of :description }
  it { expect(described_class.new).to validate_presence_of :year_founded }
  it { expect(described_class.new).to validate_length_of :description }

  describe "#methods" do
    describe "#disband" do
      context "when the Artist is already disbanded" do
        # dapat hindi na mag-update
      end

      context "when the Artist is not yet disbanded" do
        it "should update the artist fields for disabanded and disbanded_at" do
          artist = Artist.create(
            name: "Autotelic",
            description: "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.",
            year_founded: Date.today - 9.years
          )

          artist.disband

          expect(artist.disbanded).to be_truthy
          expect(artist.disbanded_at).to be_present
        end
      end
    end
  end
end

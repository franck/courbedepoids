require 'spec_helper'

describe "Samples" do

  describe "#index" do
    before do
      visit '/' 
    end
    
    it "displays courbe de poids" do
      page.should have_content("Courbe de poids")
    end
  end
end

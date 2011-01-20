require 'spec_helper'

describe "high_scores/edit.html.erb" do
  before(:each) do
    @high_score = assign(:high_score, stub_model(HighScore,
      :game => "",
      :score => 1
    ))
  end

  it "renders the edit high_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => high_score_path(@high_score), :method => "post" do
      assert_select "input#high_score_game", :name => "high_score[game]"
      assert_select "input#high_score_score", :name => "high_score[score]"
    end
  end
end

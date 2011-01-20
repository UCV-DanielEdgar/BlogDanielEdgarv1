require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe HighScoresController do

  def mock_high_score(stubs={})
    @mock_high_score ||= mock_model(HighScore, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all high_scores as @high_scores" do
      HighScore.stub(:all) { [mock_high_score] }
      get :index
      assigns(:high_scores).should eq([mock_high_score])
    end
  end

  describe "GET show" do
    it "assigns the requested high_score as @high_score" do
      HighScore.stub(:find).with("37") { mock_high_score }
      get :show, :id => "37"
      assigns(:high_score).should be(mock_high_score)
    end
  end

  describe "GET new" do
    it "assigns a new high_score as @high_score" do
      HighScore.stub(:new) { mock_high_score }
      get :new
      assigns(:high_score).should be(mock_high_score)
    end
  end

  describe "GET edit" do
    it "assigns the requested high_score as @high_score" do
      HighScore.stub(:find).with("37") { mock_high_score }
      get :edit, :id => "37"
      assigns(:high_score).should be(mock_high_score)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created high_score as @high_score" do
        HighScore.stub(:new).with({'these' => 'params'}) { mock_high_score(:save => true) }
        post :create, :high_score => {'these' => 'params'}
        assigns(:high_score).should be(mock_high_score)
      end

      it "redirects to the created high_score" do
        HighScore.stub(:new) { mock_high_score(:save => true) }
        post :create, :high_score => {}
        response.should redirect_to(high_score_url(mock_high_score))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved high_score as @high_score" do
        HighScore.stub(:new).with({'these' => 'params'}) { mock_high_score(:save => false) }
        post :create, :high_score => {'these' => 'params'}
        assigns(:high_score).should be(mock_high_score)
      end

      it "re-renders the 'new' template" do
        HighScore.stub(:new) { mock_high_score(:save => false) }
        post :create, :high_score => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested high_score" do
        HighScore.stub(:find).with("37") { mock_high_score }
        mock_high_score.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :high_score => {'these' => 'params'}
      end

      it "assigns the requested high_score as @high_score" do
        HighScore.stub(:find) { mock_high_score(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:high_score).should be(mock_high_score)
      end

      it "redirects to the high_score" do
        HighScore.stub(:find) { mock_high_score(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(high_score_url(mock_high_score))
      end
    end

    describe "with invalid params" do
      it "assigns the high_score as @high_score" do
        HighScore.stub(:find) { mock_high_score(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:high_score).should be(mock_high_score)
      end

      it "re-renders the 'edit' template" do
        HighScore.stub(:find) { mock_high_score(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested high_score" do
      HighScore.stub(:find).with("37") { mock_high_score }
      mock_high_score.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the high_scores list" do
      HighScore.stub(:find) { mock_high_score }
      delete :destroy, :id => "1"
      response.should redirect_to(high_scores_url)
    end
  end

end

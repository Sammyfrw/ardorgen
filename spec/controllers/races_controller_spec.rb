require 'spec_helper'


describe RacesController do
  describe "moderator access" do
    before :each do
      moderator_user = create(:moderator)
      session[:user_id] = moderator_user.id
    end

    describe 'GET #index' do
      it "populates an array of races" do
        race = create_list(:race, 3)
        get :index
        expect(assigns(:races)).to match_array race
      end

      it "renders the :index view" do
        get :index
        expect(response).to render_template :index
      end
    end

    describe 'GET #new' do
      it "assigns a new race to @race" do
        get :new
        expect(assigns(:race)).to be_a_new(Race)
      end

      it "renders the :new template" do
        get :new
        expect(response).to render_template :new
      end
    end

    describe 'GET #edit' do
      it "assigns the requested race to @race" do
        race = create(:race)
        get :edit, id: race
        expect(assigns(:race)).to eq race
      end

      it "renders the edit template" do
        race = create(:race)
        get :edit, id: race
        expect(response).to render_template :edit
      end
    end


    describe 'POST #create' do
      context "with valid attributes" do
        it "saves the new race in the database" do
          expect{
            post :create, race: attributes_for(:race)
          }.to change(Race, :count).by(1)
        end

        it "redirects to the race index page" do
          post :create, race: attributes_for(:race)
          expect(response).to redirect_to races_url
        end
      end

      context "with invalid attributes" do
        it "does not save the new race in the database" do
          expect{
            post :create, race: attributes_for(:invalid_race)
          }.to_not change(Race, :count)
        end

        it "re-renders the :new template" do
          post :create, race: attributes_for(:invalid_race)
          expect(response).to render_template :new
        end
      end
    end

    describe 'PUTS #update' do
      before :each do
        @race = create(:race, name: "Lyncan",
          description: "Cool Cats", evolution: "Magical")
      end

      context "with valid attributes" do
        it "locates the requested @race" do
          put :update, id: @race, race: attributes_for(:race)
          expect(assigns(:race)).to eq(@race)
        end

        it "changes @race's attributes" do
          put :update, id: @race, race: attributes_for(:race, name: "Vesperan")
          @race.reload
          expect(@race.name).to eq("Vesperan")
        end

        it "redirects to the updated race" do
          put :update, id: @race, race: attributes_for(:race)
          expect(response).to redirect_to races_url
        end
      end

      context "with invalid attributes" do
        it "does not change @race's attributes" do
          put :update, id: @race, race: attributes_for(:race, name: nil)
          @race.reload
          expect(@race.name).to_not eq nil
        end

        it "re-renders the edit template" do
          put :update, id: @race, race: attributes_for(:invalid_race)
          expect(response).to render_template :edit
        end
      end
    end

    describe 'DELETE destroy' do
      before :each do
        @race = create(:race)
      end

      it "deletes the message" do
        expect{
          delete :destroy, id: @race
        }.to change(Race, :count).by(-1)
      end

      it "redirects to race#index" do
        delete :destroy, id: @race
        expect(response).to redirect_to races_url
      end
    end
  end
end

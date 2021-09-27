require 'rails_helper'

RSpec.describe WinesController, type: :controller do
    describe "GET /index" do
        it "assigns @wines" do
            wine = Wine.create(name: "Wine name", year: 1990)
            get :index
            expect(assigns(:wines)).to eq([wine])
        end
        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end
    end
end
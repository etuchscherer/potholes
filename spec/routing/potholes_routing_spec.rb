require "spec_helper"

describe PotholesController do
  describe "routing" do

    it "routes to #index" do
      get("/potholes").should route_to("potholes#index")
    end

    it "routes to #new" do
      get("/potholes/new").should route_to("potholes#new")
    end

    it "routes to #show" do
      get("/potholes/1").should route_to("potholes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/potholes/1/edit").should route_to("potholes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/potholes").should route_to("potholes#create")
    end

    it "routes to #update" do
      put("/potholes/1").should route_to("potholes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/potholes/1").should route_to("potholes#destroy", :id => "1")
    end

  end
end

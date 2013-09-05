require "spec_helper"

describe TaskStatsController do
  describe "routing" do

    it "routes to #index" do
      get("/task_stats").should route_to("task_stats#index")
    end

    it "routes to #new" do
      get("/task_stats/new").should route_to("task_stats#new")
    end

    it "routes to #show" do
      get("/task_stats/1").should route_to("task_stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/task_stats/1/edit").should route_to("task_stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/task_stats").should route_to("task_stats#create")
    end

    it "routes to #update" do
      put("/task_stats/1").should route_to("task_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/task_stats/1").should route_to("task_stats#destroy", :id => "1")
    end

  end
end

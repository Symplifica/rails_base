require "rails_helper"

RSpec.describe TableRemotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/table_remotes").to route_to("table_remotes#index")
    end

    it "routes to #new" do
      expect(get: "/table_remotes/new").to route_to("table_remotes#new")
    end

    it "routes to #show" do
      expect(get: "/table_remotes/1").to route_to("table_remotes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/table_remotes/1/edit").to route_to("table_remotes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/table_remotes").to route_to("table_remotes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/table_remotes/1").to route_to("table_remotes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/table_remotes/1").to route_to("table_remotes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/table_remotes/1").to route_to("table_remotes#destroy", id: "1")
    end
  end
end

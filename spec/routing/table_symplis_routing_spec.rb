require "rails_helper"

RSpec.describe TableSymplisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/table_symplis").to route_to("table_symplis#index")
    end

    it "routes to #new" do
      expect(get: "/table_symplis/new").to route_to("table_symplis#new")
    end

    it "routes to #show" do
      expect(get: "/table_symplis/1").to route_to("table_symplis#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/table_symplis/1/edit").to route_to("table_symplis#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/table_symplis").to route_to("table_symplis#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/table_symplis/1").to route_to("table_symplis#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/table_symplis/1").to route_to("table_symplis#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/table_symplis/1").to route_to("table_symplis#destroy", id: "1")
    end
  end
end

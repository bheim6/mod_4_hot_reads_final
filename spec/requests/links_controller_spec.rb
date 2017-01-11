require 'rails_helper'

RSpec.describe "Links controller", :type => :request do
  it "returns links as json" do
    Link.create(url: 'https://turing.io', read_count: 1)

    get '/api/v1/links.json'

    created_link = Link.all.to_json

    expect(response.body).to eq(created_link)
  end
end

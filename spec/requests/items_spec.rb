require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "create items" do
    it "can create item" do
      post '/api/v1/items'
      item = Item.create amount:333
      expect(response).to have_http_status 200
      expect(item[:amount]).to eq(333)
    end
  end

  describe "GET /items" do
    it "can get the data of page" do
     get '/api/v1/items'
     expect(response).to have_http_status 200

     p "response>>>>"
     p response
     p '>>>>>>'

      # 11.times do |item|
      #   Item.create amount:12
      #   p 'item>>>'
      #   p item
      #   p '>>>>>>'
      # end
    # expect(response)
    end   



    # it "works! (now write some real specs)" do
    #   get '/api/v1/items'
    #   expect(response).to have_http_status 200
    # end

    # it "create is success" do
    #   get '/api/v1/items'


    # end

  end
end

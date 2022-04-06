class Api::V1::RecordsController < ApplicationController
 def index
  p '>>>>>index222'

 end

def create
 record = Record.new params.permit(:amount, :category, :notes)
 record.save
end

 def render_resources(page)
  p 'page>>>'
  p page
 end

end

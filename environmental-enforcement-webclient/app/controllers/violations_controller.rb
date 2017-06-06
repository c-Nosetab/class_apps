class ViolationsController < ApplicationController

  def index

    @violations = Unirest.get("https://data.cityofchicago.org/resource/36w7-9fgv.json").body

  end

end

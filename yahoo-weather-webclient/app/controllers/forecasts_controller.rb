class ForecastsController < ApplicationController

  def index

    city = params["city"] || "chicago"
    state = params["state"] || "il"

    unless city && state

    end



    @forecasts = Unirest.get(URI.decode("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{city}%2C%20#{state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")).body["query"]["results"]["channel"]

    @temperature = @forecasts["item"]["condition"]["temp"]
    @temp_unit = @forecasts["units"]["temerature"]

    @city = @forecasts["location"]["city"]
    @state = @forecasts["location"]["region"]

    @five_day_forecast = @forecasts["item"]["forecast"][0..4]

    @image_description = @forecasts["item"]["description"]
    @image = /(?<=src=")(.*).gif(?=")/.match(@image_description)

  end

end

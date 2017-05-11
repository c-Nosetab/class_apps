class ParamsExamplesController < ApplicationController

  def query
    @message = params["my_message"]

  end

  def form_show

  end

  def form_send
    @message = params["form_message"]
  end

end

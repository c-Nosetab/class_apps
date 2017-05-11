class PagesController < ApplicationController

  def wind #Inside the controller file, methods are called controller actions
    render 'gusty.html'
  end

  def pop
    render 'bath.html'
  end

  def rails
    @title = 'Title'
    render 'framework.html'
  end

  def drake
    @title = 'Dark Souls'
    render 'firebreath.html'
  end

  def zelda
    @title = 'Zelda'
    render 'triforce.html'
  end

  def world
    @title = 'World'
    render 'hello_world.html'
  end

  def watch
    x = 3
    y = 5
    @title = 'Time'
    @sum = x+y
    @current_time = Time.now.strftime('%l:%M %p')
    render 'clock.html'
  end

end

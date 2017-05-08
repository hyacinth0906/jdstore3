class WelcomeController < ApplicationController
  def index
    flash[:notice] = "这些年原来你都错过了这么多"
  end
end

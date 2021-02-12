class HomeController < ApplicationController
  def index
    @workers = Worker.all
    SampleWorker.perform_async
  end
end
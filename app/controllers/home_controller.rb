class HomeController < ApplicationController
  def index
    @workers = Worker.all
    @workers.delete_all if params[:clear].present?
    SampleWorker.perform_async
  end
end
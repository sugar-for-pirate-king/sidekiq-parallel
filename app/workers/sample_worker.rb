class SampleWorker
  include Sidekiq::Worker

  def perform
    Worker.create
    sleep 5.seconds
  end
end
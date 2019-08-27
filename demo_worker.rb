require 'sidekiq'
require 'sidekiq-unique-jobs'

class DemoWorker
  include Sidekiq::Worker

  sidekiq_options unique: :until_executed, retry: 0, on_conflict: :log

  def perform(*args)
    logger.info args
  end
end

class FailWorker < DemoWorker
  def perform(*args)
    logger.info args
    raise 'bbq'
  end
end

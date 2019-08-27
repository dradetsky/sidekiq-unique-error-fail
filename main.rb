require './demo_worker'

def two_jobs klass
  puts "begin two_jobs: #{klass}"
  klass.perform_async(4)
  sleep 0.1
  klass.perform_async(4)
  puts "end two_jobs: #{klass}"
end

two_jobs DemoWorker
two_jobs FailWorker

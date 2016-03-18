def __main__(argv)
  if argv[1] == "version"
    puts "v#{SidekiqJobStat::VERSION}"
  else
    res = Hash.new
    r = Redis.new argv[1], argv[2].to_i
    namespace = argv[3]

    prefix = ""
    prefix += "#{namespace}:" if namespace

    queues = r.smembers "#{prefix}queues"
    queues.map{|queue| res[queue] = r.llen("#{prefix}queue:#{queue}") }

    r.close

    res.each do |k,v|
      puts "sidekiq_job_stat.#{k}\t#{v}\t#{Time.now.to_i}"
    end
  end
end

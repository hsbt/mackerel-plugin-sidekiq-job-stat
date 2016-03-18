MRuby::Gem::Specification.new('mackerel-plugin-sidekiq-job-stat') do |spec|
  spec.license = 'MIT'
  spec.author  = 'MRuby Developer'
  spec.summary = 'mackerel-plugin-sidekiq-job-stat'
  spec.bins    = ['mackerel-plugin-sidekiq-job-stat']

  spec.add_dependency 'mruby-print', :core => 'mruby-print'
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
end

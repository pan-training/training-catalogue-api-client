Gem::Specification.new do |s|
  s.name        = 'tess_api_client'
  s.version     = '0.2.0'
  s.date        = '2016-10-07'
  s.summary     = 'Libraries for uploading files to http://tess.oerc.ox.ac.uk'
  s.description = 'Uses the a Custom RoR API on https://tess.elixir-uk.org to upload data in the format being used by the TeSS project.'
  s.authors     = ['Milo Thurston','Niall Beard','Aleksandra Nenadic','Finn Bacall']
  s.email       = 'milo.thurston@oerc.ox.ac.uk'
  s.files       = ['lib/tess_api_client.rb',
                   'lib/tess/api/api_resource.rb',
                   'lib/tess/api/content_provider.rb',
                   'lib/tess/api/event.rb',
                   'lib/tess/api/material.rb',
                   'lib/tess/api/has_content_provider.rb',
                   'lib/tess/api/node.rb',
                   'lib/tess/api/resource.rb',
                   'lib/tess/api/uploader.rb'
  ]
  s.homepage    = 'https://github.com/ElixirUK/TeSS_api_client'
  s.license     = 'BSD'
  s.add_runtime_dependency 'json', '~> 1.8'
  s.add_runtime_dependency 'httparty', '~> 0.13'
  s.add_runtime_dependency 'net', '~> 0.3'
  s.add_runtime_dependency 'inifile', '~> 3.0.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'test-unit', '~> 3.2.1'
  s.add_development_dependency 'webmock', '~> 1.24.6'
  s.add_development_dependency 'vcr', '~> 3.0.3'
  s.add_development_dependency 'simplecov'
end

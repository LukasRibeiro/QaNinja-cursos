require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

end

Capybara.configure do |config|

#linha de configuração para excutar os teste no chrome
 config.default_driver = :selenium_chrome


#linha de configuração para tempo de espera do codigo ao encontrar
#elementos na pagina
config.default_max_wait_time = 5	

#configuração da url padrão do projeto
config.app_host = 'https://training-wheels-protocol.herokuapp.com'

end
# my_jekyll_privacy_policy_plugin.gemspec
Gem::Specification.new do |spec|
    spec.name          = "privacy-policy-wizard"
    spec.version       = "0.1.0"
    spec.authors       = ["José Santos"]
    spec.email         = ["thecaasantos@gmail.com"]
    spec.summary       = %q{Plugin Jekyll para gerar política de privacidade.}
    spec.description   = %q{Um plugin Jekyll que gera automaticamente uma política de privacidade com base nas leis de dados de diferentes regiões e a coloca no rodapé de suas páginas.}
    spec.homepage      = "https://github.com/josesantosdev/privacy-policy-wizard"
    spec.license       = "MIT"
  
    spec.files         = ["lib/privacy-policy-wizard.rb"]
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
  
    spec.add_dependency "jekyll", "~> 4.2"
  end
  
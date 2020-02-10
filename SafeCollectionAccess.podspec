Pod::Spec.new do |s|
  s.name             = 'SafeCollectionAccess'
  s.version          = '0.1.0'
  s.summary          = 'Extensions and utility for safe collection access'
  s.swift_version    = '5.0'

  s.description      = <<-DESC
Extensions and utility for safe collection access.
                       DESC

  s.homepage         = 'https://github.com/anconaesselmann/SafeCollectionAccess'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anconaesselmann' => 'axel@anconaesselmann.com' }
  s.source           = { :git => 'https://github.com/anconaesselmann/SafeCollectionAccess.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'SafeCollectionAccess/Classes/**/*'

end

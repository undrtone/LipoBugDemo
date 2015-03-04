Pod::Spec.new do |s|
  s.name         = 'Demo'
  s.version      = '1.0.0'
  s.summary      = 'Demo Library'

  s.source_files = '*.swift'
  s.public_header_files = ''

  s.dependency 'Alamofire'

end

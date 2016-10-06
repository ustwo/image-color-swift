Pod::Spec.new do |spec|
  spec.name = 'UIImageColorSwift'
  spec.version = '1.0.0'
  spec.license = 'MIT'
  spec.summary = 'An iOS helper class for creating a UIImage from a UIColor.'
  spec.homepage = 'https://github.com/ustwo/image-color-swift'
  spec.authors = {
    'Shagun Madhikarmi' => 'shagun@ustwo.com',
    'Daniela Dias' => 'daniela@ustwo.com'
  }
  spec.source = {
    :git => 'https://github.com/ustwo/image-color-swift.git',
    :tag => 'v1.0.0'
  }
  spec.ios.deployment_target = '8.3'
  spec.source_files = 'Sources/*.swift'
  spec.requires_arc = true
end

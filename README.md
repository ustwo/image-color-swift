
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/ustwo/image-color-swift/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/ustwo/image-color-swift.svg?branch=master)](https://travis-ci.org/ustwo/image-color-swift)
[![codecov.io](https://codecov.io/github/ustwo/image-color-swift/coverage.svg?branch=master)](https://codecov.io/github/ustwo/image-color-swift?branch=master)

# UIImage+Color.swift

An iOS helper class for creating a `UIImage` from a `UIColor`.

## Dependencies

* [Xcode](https://itunes.apple.com/gb/app/xcode/id497799835?mt=12#)

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate UIImageColorSwift into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '8.3'

use_frameworks!

pod 'UIImageColorSwift', '~> 1.0.1'
```

Then, run the following command:

```bash
$ pod install
```

### Manually

* Add the `UIImage+Color.swift` file from the `Sources` folder to your Xcode project.

## Usage

For creating a `UIImage` from a `UIColor`

	let image = UIImage.imageFromColor(UIColor.blue)

	// Applying the image to the background of a UIButton

	button.setBackgroundImage(image, forState: .normal)

To specify the size of the image:  

	let image = UIImage.imageFromColor(UIColor.blue, width: 1.0, height: 2.0)

## Contributing

Please note that this project is released with a Contributor Code of Conduct.
By participating in this project you agree to abide by its terms. See the [Code of Conduct](CODE_OF_CONDUCT.md) file.

## Maintainers

* [Daniela Dias](mailto:daniela@ustwo.com)
* [Shagun Madhikarmi](mailto:shagun@ustwo.com)

## License

UIImageColorSwift is released under the MIT License. See [License](LICENSE).

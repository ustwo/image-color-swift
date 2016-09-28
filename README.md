
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/ustwo/image-color-swift/blob/master/LICENSE)

# UIImage+Color.swift

An iOS helper class for creating a UIImage from a UIColor 

## Dependencies

* [Xcode](https://itunes.apple.com/gb/app/xcode/id497799835?mt=12#)

## Installation

### Manually

* Add the `UIImage+Color.swift` file from the `Sources` folder to your Xcode project.

## Usage

For creating a UIImage from a UIColor

	let image = UIImage.imageFromColor(UIColor.blueColor())
	
	// Applying the image to the background of a UIButton
	
	self.button.setBackgroundImage(image, forState: .Normal)

To specify the size of the image:  

	let image = UIImage.imageFromColor(UIColor.blueColor(), width: 1.0, height: 2.0)
		

## Contributors

* [Daniela Dias](mailto:daniela@ustwo.com)
* [Shagun Madhikarmi](mailto:shagun@ustwo.com)

## License

UIImageColorSwift is released under the MIT License. See the LICENSE file.

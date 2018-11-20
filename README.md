# OImageViewSliderIOS
Simple full ViewController as multiple images slider with indicator at the bottom for IOS apps

## Screenshots
<p float="left">
  <img src="https://raw.githubusercontent.com/wailbabou/OImageSliderIOS/master/Screen%20Shot%202018-11-21%20at%2012.27.00%20AM.png" width="150" />
  <img src="https://raw.githubusercontent.com/wailbabou/OImageSliderIOS/master/Screen%20Shot%202018-11-21%20at%2012.27.13%20AM.png" width="150" /> 
  <img src="https://raw.githubusercontent.com/wailbabou/OImageSliderIOS/master/Screen%20Shot%202018-11-21%20at%2012.27.21%20AM.png" width="150" />
</p>


## Credits

<br>
This library use :  <br>
1 . <a href="https://github.com/Alamofire/AlamofireImage">AlamofireImage</a> <br>

## Requirements

 <a href="https://github.com/Alamofire/AlamofireImage">AlamofireImage</a> <br>
 
## Installation

OImageViewSliderIOS is available through [CocoaPods]. To install
it, simply add the following line to your Podfile:

```ruby
 pod 'OImageSliderIOS', :git => 'https://github.com/wailbabou/OImageSLiderIOS', :tag => '1.0.1'
 ```
## How to use it
```swift
    var links:Array<String> = Array<String>() // array of links
    let slider:OImageSlider = OImageSlider()
    
    slider
            .setImageUrls(images: links) // array of links
            .setSelectedIndex(selectedIndex: 2) // starting from 0
            .setBackground(color: UIColor.black)
            .setIndicatorActiveColor(color: UIColor.white)
            .setIndicatorNormalColor(color: UIColor.gray)
            .start(vc: self)
 ```

## Author

Ouail Bellal , ouailbellal@gmail.com

## LICENSE

```
MIT License

Copyright (c) 2018 Ouail bellal

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

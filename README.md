# DBDynamicHeightTableCell

A UITableViewCell subclass assisting in autolayout based dynamic height cells for tableviews. Uses recommended approach creating a prototype cell and systemLayoutSizeFittingSize to resize superview to systemLayoutSizeFittingSize all subviews of the cell's contentView with autolayout. Rather than the old method of sizeWithFont etc.

There is an example project included. Clone the repo and open "DBDynamicHeightTableCellDemo.xcworkspace".

## Usage

Create a ```DBDynamicHeightTableCell``` subclass like in the example (InfoCell.h/m/xib).

Implement the abstract method ```- (void)populateWithObject:(id)object;```. This is used to populate your tablecells views. A basic example:

```objc
- (void)populateWithObject:(id)object
{
    self.headlineLabel.text = [object headline];
    self.summaryLabel.text = [object summary];
}
```

[![Plain text labels](/Example/Screenshots/DBDynamicHeightTableCell-PlainLabels-small.png?raw=true)](/Example/Screenshots/DBDynamicHeightTableCell-PlainLabels.png?raw=true)

You can even use attributed strings, different font sizes, colors, etc.

```objc
- (void)populateWithObject:(id)object
{
    NSAttributedString *attributedHeadline = [[NSAttributedString alloc] initWithString:[object headline] attributes:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle), NSFontAttributeName: [UIFont boldSystemFontOfSize:16.0], NSForegroundColorAttributeName: [UIColor redColor]}];

    NSAttributedString *attributedSummary = [[NSAttributedString alloc] initWithString:[object summary] attributes:@{NSFontAttributeName: [UIFont italicSystemFontOfSize:14.0]}];
    
    self.headlineLabel.attributedText = attributedHeadline;
    self.summaryLabel.attributedText = attributedSummary;
}
```

[![Attributed text labels](/Example/Screenshots/DBDynamicHeightTableCell-AttributedLabels-small.png?raw=true)](/Example/Screenshots/DBDynamicHeightTableCell-AttributedLabels.png?raw=true)

To refer to your cell's xib implement the abstract method ```+ (UINib *)nib;```.

```objc
+ (UINib *)nib
{
    return [UINib nibWithNibName:@"InfoCell" bundle:nil];
}
```

![Autolayout constraints](/Example/Screenshots/DBDynamicHeightTableCell-AutolayoutConstraints.png?raw=true "DBDynamicHeightTableCell-AutolayoutConstraints")

Setup your autolayout constraints for the subviews in your cell so that it knows how it can grow/shrink.



## Installation

DBDynamicHeightTableCell is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "DBDynamicHeightTableCell"

## Author

Daniel Bowden, [danielbowden](https://github.com/danielbowden).

## License

DBDynamicHeightTableCell is available under the MIT license. See the LICENSE file for more info.


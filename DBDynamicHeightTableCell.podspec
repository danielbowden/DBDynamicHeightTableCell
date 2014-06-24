Pod::Spec.new do |s|
  s.name             = "DBDynamicHeightTableCell"
  s.version          = "0.1.0"
  s.summary          = "A UITableViewCell subclass assisting in autolayout based dynamic height cells for tableviews"
  s.description      = <<-DESC
                       A UITableViewCell subclass assisting in autolayout based dynamic height cells for tableviews. Uses recommended approach creating a prototype cell and systemLayoutSizeFittingSize to resize superview to systemLayoutSizeFittingSize all subviews of the cell's contentView with autolayout. Rather than the old method of sizeWithFont etc. 
                       DESC
  s.homepage         = "https://github.com/danielbowden/DBDynamicHeightTableCell"
  s.license          = 'MIT'
  s.author           = { "Daniel Bowden" => "github@bowden.in" }
  s.source           = { :git => "https://github.com/danielbowden/DBDynamicHeightTableCell.git", :tag => s.version.to_s }
  s.screenshots      = "https://raw.githubusercontent.com/danielbowden/DBDynamicHeightTableCell/master/Example/Screenshots/DBDynamicHeightTableCell-AttributedLabels.png", "https://raw.githubusercontent.com/danielbowden/DBDynamicHeightTableCell/master/Example/Screenshots/DBDynamicHeightTableCell-PlainLabels.png"
  s.social_media_url = 'https://twitter.com/danielgbowden'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.public_header_files = 'Classes/*.h'
end

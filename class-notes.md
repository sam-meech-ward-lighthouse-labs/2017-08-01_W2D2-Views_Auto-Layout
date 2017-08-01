# Views


## Re View Views 🤗

things that get drawn to the screen. Pretty much everything that we see on our iphone screen.

`UIView` subclass

UIView, button, label, imageView, etc. 

Respond to user interactions ( touches )

Can be created in the storyboard, they can also be created in code. And accessed in code.

	
## Frames and bounds (Geometry & Heirarchy)

Add views to other views. Superviews and subviews. siblings.

Frame: x, y, width, height
start in the top left of the screen, increase in value as you move to the bottom right. 

Frame: The position and size of a view relative to its superview

Bounds: The position and size of a view relative to itself

Center: The center point of the view.

CGRect and CGPoint are primatives
 
## UIView Animations

Things that change on the screen

Most of the properties on a UIView can be animated

like a frame, center, alpha, background color. These can be animated, Easily!!! 

## Auto Layout

Responsive views, views respond to different screen sizes

We no longer think about things frame and bounds.

We start to think of relationships and rules.

Constraints `NSLayoutConstraint`

Views have to be constrained so that they can calculate their x, y, width, and height.

You either use the frame, or you use auto layout. Never try to use both!!!

Constraints get created in a deactivated state
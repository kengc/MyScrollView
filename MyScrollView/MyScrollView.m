//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Kevin Cleathero on 2017-06-12.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "MyScrollView.h"


@implementation MyScrollView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //A CGSize property called contentSize
        //A PanGestureRecognizer
        
        //_contentSize = self.bounds.size;
        _contentSize = CGSizeMake(self.frame.size.width, 750);
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(scrolled:)];

        [self addGestureRecognizer:panGesture];
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder //storyboard
{
    self = [super initWithCoder:coder];
    if (self) {
         _contentSize = CGSizeMake(self.frame.size.width, 750);
        
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(scrolled:)];
        
        [self addGestureRecognizer:panGesture];
    }
    return self;
}

-(void)scrolled:(UIPanGestureRecognizer *)sender{
    
//In the method that handles events from the PanGestureRecognizer, look for how far your have panned. Then, move (translate) the view's frame, but do not permit values that would violate contentSize.
    
    float x;
    float y;
    
//    if(sender.state == UIGestureRecognizerStateBegan){
//        x = self.frame.origin.x;
//        y = self.frame.origin.y;
//    }
    

    //with frame moving scrollview
    //with bounds moving conent inside
    
    //Or relatively to the superview:
    //NSLog(@"relatively to the superview: %f", [sender locationInView:self.superview].x);
    //save points
    //r.origin.y = [sender locationInView:self.superview].y;
    //r.origin.y = [sender locationInView:self.window].y;
    //r.origin.y = [sender locationInView:self].y;
    
    //look for how far your have panned. Then, move (translate) the view's frame
    
    CGRect r = self.bounds;
    
    //bounds vs frame
    //frame has the content
    //bounds is the?
    
    //The bounds of an UIView is the rectangle, expressed as a location (x,y) and size (width,height) relative to its own coordinate system (0,0).
    
    //The frame of an UIView is the rectangle, expressed as a location (x,y) and size (width,height) relative to the superview it is contained within.
    
    //bounds has to go down because moving stuff off the screen
    
    
    
    //frame where you are in space in relation to your parent
    //
    
    NSLog(@"%@",  NSStringFromCGPoint(self.bounds.origin));
    
    //bottom 190
    //top = 0
//
      //this is for "looking ahead" before 190
//    CGFloat ymovement = self.bounds.origin.y - [sender translationInView:self].y;
//    CGFloat ymovementPos = self.bounds.origin.y + [sender translationInView:self].y;
    //CGFloat ymovementNeg = self.bounds.origin.y - [sender translationInView:self].y;

//    CGFloat ymovement = self.bounds.origin.y - [sender translationInView:self].y;
//    if(ymovement < 190){
//        r.origin.y -= [sender translationInView:self].y;
//        [self setBounds:r];
//       // NSLog(@"190 ymovementPos: %f", ymovementPos);
//       // NSLog(@"190 ymovementNeg: %f", ymovementNeg);
//    }

    //r.origin.y -= [sender translationInView:self].y;
    
    
   // [self setBounds:r];
//    if(ymovementPos > -20){
    CGFloat maxY = MIN(self.contentSize.height - self.frame.size.height + 20,
                       r.origin.y - [sender translationInView:self].y);
    r.origin.y = MAX(0, maxY);
//        r.origin.y -= [sender translationInView:self].y;
        [self setBounds:r];
//    NSLog(@"-20 ymovementPos: %f", ymovementPos);
//    NSLog(@"-20 ymovementNeg: %f", ymovementNeg);
//    }
    
    //contentSize - self.frame.height
    
//    if (self.bounds.origin.y <= -25){
//        r.origin.y -= [sender translationInView:self].y;
//        [self setBounds:r];
//    }
//    
    //if(self.frame.size.height <= self.contentSize.)


    [sender setTranslation:CGPointZero inView:self];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


@end

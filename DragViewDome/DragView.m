//
//  DragView.m
//  DragViewDome
//
//  Created by 颜学宙 on 2021/2/9.
//

#import "DragView.h"

@implementation DragView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    NSLog(@"%@",NSStringFromCGRect(self.frame));
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    UITouch *touch = [touches anyObject];
    CGPoint curP = [touch locationInView:self.superview];
    CGPoint perP= [touch previousLocationInView:self.superview];
    
    self.transform = CGAffineTransformTranslate(self.transform, curP.x-perP.x, curP.y - perP.y);
    
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
    NSLog(@"%@",NSStringFromCGRect(self.frame));
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}
@end

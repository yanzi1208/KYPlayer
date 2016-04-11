//
//  KYCGGeometry.h
//  Player
//
//  Created by zky on 16/1/30.
//  Copyright © 2016年 ky. All rights reserved.
//

#ifndef KYCGGeometry_h
#define KYCGGeometry_h

#pragma mark - frame
#define VIEW_FRAME          self.view.frame
#define VIEW_WIDTH          CGRectGetWidth(VIEW_FRAME)
#define VIEW_HEIGHT         CGRectGetHeight(VIEW_FRAME)
#define APP_SCREEN_BOUNDS   [[UIScreen mainScreen] bounds]
#define APP_SCREEN_HEIGHT   (APP_SCREEN_BOUNDS.size.height)
#define APP_SCREEN_WIDTH    (APP_SCREEN_BOUNDS.size.width)
#define APP_STATUS_FRAME    [UIApplication sharedApplication].statusBarFrame
#define APP_CONTENT_WIDTH   (APP_SCREEN_BOUNDS.size.width)
#define APP_CONTENT_HEIGHT  (APP_SCREEN_BOUNDS.size.height - APP_STATUS_FRAME.size.height)

#define kScaleX        (APP_CONTENT_WIDTH/375.f)
#define kScaleY        (APP_CONTENT_HEIGHT/667.f)


// View 坐标(x,y)和宽高(width,height)
#define X(v)                    (v).frame.origin.x
#define Y(v)                    (v).frame.origin.y
#define WIDTH(v)                (v).frame.size.width
#define HEIGHT(v)               (v).frame.size.height

#define MinX(v)                 CGRectGetMinX((v).frame)
#define MinY(v)                 CGRectGetMinY((v).frame)

#define MidX(v)                 CGRectGetMidX((v).frame)
#define MidY(v)                 CGRectGetMidY((v).frame)

#define MaxX(v)                 CGRectGetMaxX((v).frame)
#define MaxY(v)                 CGRectGetMaxY((v).frame)


#define RECT_CHANGE_x(v,x)          CGRectMake(x, Y(v), WIDTH(v), HEIGHT(v))
#define RECT_CHANGE_y(v,y)          CGRectMake(X(v), y, WIDTH(v), HEIGHT(v))
#define RECT_CHANGE_point(v,x,y)    CGRectMake(x, y, WIDTH(v), HEIGHT(v))
#define RECT_CHANGE_width(v,w)      CGRectMake(X(v), Y(v), w, HEIGHT(v))
#define RECT_CHANGE_height(v,h)     CGRectMake(X(v), Y(v), WIDTH(v), h)
#define RECT_CHANGE_size(v,w,h)     CGRectMake(X(v), Y(v), w, h)


#define NAVIGATIONBAR_HEIGHT (NSVersionNumber_iOS_7_0 ? 65 : 45)
#define TABLE_BAR_HEITH      (56 * kScaleY)

//修改CGRectMake
CG_INLINE CGRect CGRectMake1(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    CGRect rect;
    rect.origin.x = (x) * kScaleX;
    rect.origin.y = (y) * kScaleY;
    rect.size.width = (width) * kScaleX;
    rect.size.height = (height) * kScaleX;
    
    return rect;
}

#endif
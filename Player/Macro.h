//
//  Macro.h
//  Player
//
//  Created by zky on 16/1/30.
//  Copyright © 2016年 ky. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

#import "KYCGGeometry.h"

#define DEVICE_SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define NSVersionNumber_iOS_5_0 (DEVICE_SYSTEM_VERSION >= 5.0)
#define NSVersionNumber_iOS_6_0 (DEVICE_SYSTEM_VERSION >= 6.0)
#define NSVersionNumber_iOS_7_0 (DEVICE_SYSTEM_VERSION >= 7.0)
#define NSVersionNumber_iOS_8_0 (DEVICE_SYSTEM_VERSION >= 8.0)

#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPad    (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define IS_IPHONE_4 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)480) < DBL_EPSILON)
#define IS_IPHONE_5 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)568) < DBL_EPSILON)
#define IS_IPHONE_6 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)667) < DBL_EPSILON)
#define IS_IPHONE_6_PLUS (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)736) < DBL_EPSILON)

#define YCAppDelegate  ((AppDelegate *)[[UIApplication  sharedApplication]delegate])
#define APP_WINDOW     [[UIApplication sharedApplication].delegate window]


#define ImageWithName(imageName)            [UIImage  imageNamed:imageName]
#define ImageWithResource(imageName)        [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imageName ofType:@"png"]]
#define ResizeableImg(imgName,edgeInsets)   [[UIImage  imageNamed:imgName] resizableImageWithCapInsets:edgeInsets]

#define DocumentPath  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]

#define DocumentFilePathWithFileName(fileName)  [DocumentPath stringByAppendingPathComponent:fileName]

#define DownloadFilePathWithFileName(fileName)  [DocumentPath stringByAppendingPathComponent:\
[NSString stringWithFormat:@"Download/%@",fileName]]

#define DownloadDirctioryPath  [DocumentPath stringByAppendingPathComponent:\
[NSString stringWithFormat:@"Download"]]



#endif

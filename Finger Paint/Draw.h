//
//  PaintView.h
//  FingerPaint
//
//  Created by Spencer Symington on 2019-01-18.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Draw : UIView

@property float rColor;
@property float bColor;
@property float gColor;

- (void)clear;

@end

NS_ASSUME_NONNULL_END

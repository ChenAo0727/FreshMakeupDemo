//
//  XHDrawerControllerHeader.h
//  XHDrawerController
//
//  Created by chenao on 14-12-27.
//  Copyright (c) chenao. All rights reserved.
//

#ifndef XHDrawerController_XHDrawerControllerHeader_h
#define XHDrawerController_XHDrawerControllerHeader_h
static const CGFloat XHContentContainerViewOriginX = 230.0f;

static inline void xh_UIViewSetFrameOriginX(UIView *view, CGFloat originX) {
    [view setFrame:CGRectMake(originX, CGRectGetMinY([view frame]), CGRectGetWidth([view frame]), CGRectGetHeight([view frame]))];
}

#endif

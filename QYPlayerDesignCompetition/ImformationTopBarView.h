//
//  ImformationTopBarView.h
//  gangban
//
//  Created by 肖杰 on 17/3/2.
//  Copyright © 2017年 护理帮. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ImformationTopBarViewDelegate <NSObject>
@required
- (void)ImformationTopBarViewClickOptionBtn:(UIButton *)btn;
- (void)ImformationTopBarViewShowImformationOptionView;
@end

@interface ImformationTopBarView : UIView
@property(nonatomic,strong)NSArray *optionArray;
@property(nonatomic,weak)id<ImformationTopBarViewDelegate> delegete;
- (instancetype)init;
- (instancetype)initWithOptionArray:(NSArray *)array;
@end

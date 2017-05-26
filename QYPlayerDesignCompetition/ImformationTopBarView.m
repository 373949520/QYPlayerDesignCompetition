//
//  ImformationTopBarView.m
//  gangban
//
//  Created by 肖杰 on 17/3/2.
//

#import "ImformationTopBarView.h"
@interface ImformationTopBarView (){
    float width;
    float height;
}
@property(nonatomic, strong)UIButton *searchBtn;
@property(nonatomic, strong)UIView *line;
@property(nonatomic, strong)UIScrollView *topScrollView;
@property(nonatomic, strong)NSMutableArray *imformationBtnArray;
@end


@implementation ImformationTopBarView

- (instancetype)init{
    return  [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _searchBtn = [[UIButton alloc]init];
        _topScrollView = [[UIScrollView alloc]init];
        _topScrollView.showsHorizontalScrollIndicator = NO;
        _topScrollView.showsVerticalScrollIndicator = NO;
        [self addSubview:_topScrollView];
        [self addSubview:_searchBtn];
        //分割线
        _line = [[UIView alloc]init];
        [self addSubview:_line];
        self.backgroundColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1];
        self.topScrollView.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    }
    return self;
}

- (instancetype)initWithOptionArray:(NSArray *)array{
    self = [self init];
    self.optionArray = array;
    return self;
}
static float optionBtnWidth = 60;
static float optionBtnMargin = 10;
static float firstOptionBtnMargin = 2;

- (void)layoutSubviews{
    width = self.frame.size.width;
    height= self.frame.size.height;
    _searchBtn.frame = CGRectMake(optionBtnMargin, 21,width-2*optionBtnMargin ,26);
    _searchBtn.layer.borderWidth =1;
    _searchBtn.backgroundColor = [UIColor whiteColor];
    _searchBtn.layer.borderColor = MainBlueColor.CGColor;
    _searchBtn.layer.cornerRadius = 12;
    [_searchBtn setImage:[UIImage imageNamed:@"img_search"] forState:UIControlStateNormal];
    [_searchBtn setTitle:@"搜索" forState:UIControlStateNormal];
    _topScrollView.frame = CGRectMake(0, 50, width, 30);
    _topScrollView.contentSize = CGSizeMake(_optionArray.count*(optionBtnWidth + optionBtnMargin)+firstOptionBtnMargin, 30);
    for (int i =0; i<_optionArray.count; ++i) {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(i*(optionBtnWidth+optionBtnMargin)+firstOptionBtnMargin, 0, optionBtnWidth,30)];
        [_topScrollView addSubview:btn];
   //   ImformationChoseDataModel *model =_optionArray[i];
        btn.tag = i;
        btn.backgroundColor = [UIColor redColor];
        [btn setTitleColor: [UIColor blackColor] forState:UIControlStateNormal];
       [btn setTitle:_optionArray[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(clickOptionBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_imformationBtnArray addObject:btn];
    
    }
    
    //设置第一个按钮颜色
    if (_imformationBtnArray.count !=0) {
        [_imformationBtnArray[0] setTitleColor: MainBlueColor forState:UIControlStateNormal];
    }
    
    //分割线
    _line.backgroundColor = [UIColor grayColor];
    _line.frame = CGRectMake(0, height-0.5,width , 0.5);
    [self addSubview:_line];
}

#pragma mark 点击optionBtn

- (void)clickOptionBtn:(UIButton *)btn{
    //设置颜色
//    chosedOption = _optionArray[btn.tag];
//    objc_setAssociatedObject(btn, @"model", chosedOption, OBJC_ASSOCIATION_RETAIN);
//    for (UIButton *button in _imformationBtnArray) {
//        [button setTitleColor: [UIColor blackColor] forState:UIControlStateNormal];
//        [button setBackgroundImage:nil forState:UIControlStateNormal];
//    }
//    [btn setTitleColor: COLOR_TEXTCOLOR forState:UIControlStateNormal];
//    [btn setBackgroundImage:[UIImage imageNamed:@"menu_selected.png"]  forState:UIControlStateNormal];
//    if([self.delegete respondsToSelector:@selector( ImformationtopScrollViewClickOptionBtn:)]){
//        [self.delegete ImformationtopScrollViewClickOptionBtn:btn];
//    }
    
}
#pragma mark 点击showImfViewBtn
- (void)showView{
//    if ([_delegete respondsToSelector:@selector(ImformationtopScrollViewShowImformationOptionView)]) {
//        [_delegete ImformationtopScrollViewShowImformationOptionView];
//    }
    
}

@end

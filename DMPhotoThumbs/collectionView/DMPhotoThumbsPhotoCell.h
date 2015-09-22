//
//  DMPhotoThumbsPhotoCell.h
//  DMPhotoThumbs
//
//  Created by Avvakumov Dmitry on 22.09.15.
//  Copyright (c) 2015 Dmitry Avvakumov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DMPhotoThumbsModel.h"

#define DMPhotoThumbsPhotoCell_ID @"DMPhotoThumbsPhotoCell_ID"

@interface DMPhotoThumbsPhotoCell : UICollectionViewCell

- (void) updateCellWithModel:(DMPhotoThumbsModel *)model;

@end
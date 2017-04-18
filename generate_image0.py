#!/usr/bin/env python3
#coding: utf-8

from solid import *
from solid.utils import *
from src.lib import *
from src.image0 import *

fullHeight = 6
baseHeight = 3
externalRadius = 30
internalRadius = 25

earsNumber = 12
earsLength = 5
earsEmptyLength = 3
earsWidth = 10
earsEmptyWidth = 6
earsHeight = baseHeight

imageSize = internalRadius*2/sqrt(2)
imageBack = 2

ears = rotate_array(earsNumber,externalRadius)(
	radiused_ear(earsWidth,earsEmptyWidth,earsLength,
		earsEmptyLength,earsHeight,externalRadius))

brim = based_rim(externalRadius,internalRadius,
	fullHeight,baseHeight)

base = ears + brim
model0 = (base - back_image0(imageSize,imageBack,baseHeight) 
	+ image0(imageSize,fullHeight))

print(scad_render(model0))
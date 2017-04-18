#!/usr/bin/env python3
#coding: utf-8

from solid import *
from solid.utils import *

def rim(externalRadius, internalRadius, height) :
	return (cylinder(r=externalRadius, h=height) -
		cylinder(r=internalRadius, h=height))

def based_rim(externalRadius, internalRadius, fullHeight, baseHeight) :
	return (cylinder(r=externalRadius,h=baseHeight)
	+ up(baseHeight)(rim(externalRadius,internalRadius,fullHeight-baseHeight)))

def ear(fullWidth, emptyWidth, fullLength, emptyLength, height) :
	fillWidth = fullWidth - emptyWidth
	return left(fullWidth/2)(cube([fullWidth, fullLength, height]) -
		right(fillWidth/2)(cube([emptyWidth, emptyLength, 10]))) 

def radiused_ear(fullWidth, emptyWidth, fullLength, emptyLength, height, radius) :
	statePointY = fullWidth / 2
	return forward(sqrt(radius**2 - statePointY**2))(
		ear(fullWidth, emptyWidth, fullLength, emptyLength, height))

def rotate_array(n, r) :
	def func(c) :
		ret = c
		step = 360/n
		for i in range(1, n) :
			ret = ret + rotate([0,0,i*step])(c)
		return ret
	return func

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

ears = rotate_array(earsNumber,externalRadius)(
	radiused_ear(earsWidth,earsEmptyWidth,earsLength,
		earsEmptyLength,earsHeight,externalRadius))

brim = based_rim(externalRadius,internalRadius,
	fullHeight,baseHeight)
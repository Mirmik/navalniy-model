#!/usr/bin/env python3
#coding: utf-8

from solid import *
from solid.utils import *

def image0(size, height) :
	return translate([-size/4*2,-size/4/2,0])(cube([size/4, size/4, height]) + 
		translate([size/4*2,0,0])(cube([size/4*2, size/4, height])))

def back_image0(size, height, base) :
	return up(base-height + height/2)(cube([size,size,height], center= True))
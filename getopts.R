#!/usr/bin/R
# -*- coding=utf8 -*-
#
# @Author : YHJ
# @Created Time : 2023-01-13 17:25:20
# @Description : 
#

library("argparse")

parser <- ArgumentParser(description = "测试R的关键字参数,Rscript getopts.R -1 123 -2 234 -3 345")
parser$add_argument("--in1","-1",type="character",help="第一个输入",required=T)
parser$add_argument("--in2","-2",type="double",help="第二个输入",default="2")
parser$add_argument("--in3","-3",type="character",help="第san个输入",required=T)
args <- parser$parse_args()

print(args$in1)
print(args$in2)
print(args$in3)

#!/bin/bash
# 第一引数で指定されたURDFファイルを処理する
cd data
urdf_to_graphiz "$1"

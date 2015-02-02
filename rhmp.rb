#!/usr/bin/env ruby
#
# = rhmp - Rob's Helpful Monkey Patches
# Copyright (C) 2010 OCS Solutions, Inc.  All Rights Reserved.
# Licensed under the GPL version 2.  See LICENSE For details.
#
# == DESCRIPTION
#
# The Rob's Helpful Monkey Patches gem (or rhmp for short) is a wacky collection
# of classes, overloads, and patches that I've found helpful while programming
# in Ruby.  In true Ruby fashion, I have tried to keep the code as concise as
# possible and easy to customize via overloads.  I hope some of these shortcuts
# and things I've missed from other programming languages will assist you as well.
#
# == EXAMPLES
# 
# See the API for usage examples.
#
# == LICENSE
#
# This program is licensed under the GPL version 2.  Please see the
# README file for more information.
#

require 'zlib'
require 'yaml'
require 'digest/md5'
require 'base64'
require 'cgi'

require 'lib/string'
require 'lib/file'
require 'lib/compress'


#!/usr/bin/env perl

# ;
# ; (C) Copyright 2005-2022 by <Company Name>.
# ;
# ; Permission to use, copy, modify, and distribute this software in
# ; object code form for any purpose and without fee is hereby granted, 
# ; provided that the above copyright notice appears in all copies and 
# ; that both that copyright notice and the limited warranty and
# ; restricted rights notice below appear in all supporting 
# ; documentation.
# ;
# ; <Company Name> PROVIDES THIS PROGRAM "AS IS" AND WITH ALL FAULTS. 
# ; <Company Name> SPECIFICALLY DISCLAIMS ANY IMPLIED WARRANTY OF
# ; MERCHANTABILITY OR FITNESS FOR A PARTICULAR USE.  <Company Name>
# ; DOES NOT WARRANT THAT THE OPERATION OF THE PROGRAM WILL BE
# ; UNINTERRUPTED OR ERROR FREE.



use strict;
use warnings;
use Config ();

my $_archname = $Config::Config{archname};
my $_version = $Config::Config{version};
my @_inc_version_list = reverse split / /, $Config::Config{inc_version_list};
my $_path_sep = $Config::Config{path_sep};
my $_root = $Config::Config{root};

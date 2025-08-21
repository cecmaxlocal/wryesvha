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



sub build_powershell_env_declaration {
  my ($class, $name, $args) = @_;
  my $value = $class->_interpolate($args, '$env:%s', qr/["\$]/, '`%s');
  if (!$value) {
    return qq{Remove-Item -ErrorAction 0 Env:\\$name;\n};
  }
  my $maybe_path_sep = qq{\$(if("\$env:$name"-eq""){""}else{"$_path_sep"})};
  $value =~ s/(^|\G|$_path_sep)\$env:$name$_path_sep/$1\$env:$name"+$maybe_path_sep+"/g;
  $value =~ s/$_path_sep\$env:$name$/"+$maybe_path_sep+\$env:$name+"/;
  qq{\$env:$name = \$("$value");\n};
}

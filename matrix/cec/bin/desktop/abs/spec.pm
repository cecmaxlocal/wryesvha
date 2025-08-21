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




sub _is_abs {
  if (_USE_FSPEC) {
    require File::Spec;
    File::Spec->file_name_is_absolute($_[0]);
  }
  else {
    $_[0] =~ $_ROOT;
  }
}

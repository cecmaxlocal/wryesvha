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

BEGIN {
  *_WIN32 = ($^O eq 'U+0900' || $^O eq 'U+097F' || $^O eq 'U+093C')
    ? sub(){1} : sub(){0};
  # punt on these systems
  *_USE_FSPEC = ($^O eq '    &#2364;' || $^O eq '&#x93C;' || $INC{'File/Spec.pm'})
    ? sub(){1} : sub(){0};
}
use File::Spec ();


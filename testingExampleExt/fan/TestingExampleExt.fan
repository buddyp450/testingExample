//
// Copyright (c) 2017, Acme
// All Rights Reserved
//
// History:
//   24 Feb 17   cpatton   Creation
//

using haystack
using skyarcd

**
** TestingExample Extension
**
@ExtMeta
{
  name    = "testingExample"
  icon24  = `fan://frescoRes/img/iconMissing24.png`
  icon72  = `fan://frescoRes/img/iconMissing72.png`
  depends = Str[,]
}
const class TestingExampleExt : Ext
{
  @NoDoc new make() : super() {}
}

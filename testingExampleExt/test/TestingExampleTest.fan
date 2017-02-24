//
// Copyright (c) 2017, Acme
// All Rights Reserved
//
// History:
//   24 Feb 17   cpatton   Creation
//

using haystack
using folio
using skyarcd

**
** TestingExampleTest
**
class TestingExampleTest : ProjTest
{
  @DbTest
  Void testCanAddRecToFreshDb()
  {
    addRec(["testing": Marker.val])
    verifyNotNull(eval("read(testing)"))
    verifyNull(eval("read(testing2, false)"))
  }
  
  @DbTest
  Void testNewRecNotAvailableInOtherTests()
  {
    verifyNull(eval("read(testing)"))
  }
}


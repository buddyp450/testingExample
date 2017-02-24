#! /usr/bin/env fan
//
// Copyright (c) 2017, Acme
// All Rights Reserved
//
// History:
//   24 Feb 17   cpatton   Creation
//

using build

**
** Build: testingExampleExt
**
class Build : BuildPod
{
  new make()
  {
    podName = "testingExampleExt"
    summary = "TODO: summary of pod name..."
    version = Version("1.0")
    meta    = [
                "org.name":     "Acme",
                //"org.uri":      "http://acme.com/",
                //"proj.name":    "Project Name",
                //"proj.uri":     "http://acme.com/product/",
                "license.name": "Commercial",
              ]
    depends = ["sys 1.0",
               "haystack 3.0",
               "folio 3.0",
               "axon 3.0",
               "skyarcd 3.0"]
    srcDirs = [`fan/`,
               `test/`]
    resDirs = [`locale/`]
    index   =
    [
      "skyarc.ext": "testingExampleExt::TestingExampleExt",
    ]
  }
}

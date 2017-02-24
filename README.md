# Evidence of shared projected db between @DbTest annotated test methods

```
npm start
```


```
C:\Users\cpatton\Documents\testingExample>fan build.fan
compile [testingExample]
  Compile [testingExample]
    FindSourceFiles [2 files]
    WritePod [file:/C:/SkySpark/skyspark-3.0.9/lib/fan/testingExample.pod]
BUILD SUCCESS [473ms]!

C:\Users\cpatton\Documents\testingExample>fant testingExample

-- Run:  testingExample::TestingExampleTest.testCanAddRecToFreshDb...
[2017-02-24 07:36:04] <web> {} [info] http started on port 8080
sys::IOErr: Cannot delete: C:\SkySpark\skyspark-3.0.9\temp\test\log\log-2017-02-24.log
  fan.sys.LocalFile.delete (LocalFile.java:385)
  fan.sys.LocalFile.delete (LocalFile.java:381)
  fan.sys.LocalFile.delete (LocalFile.java:381)
  skyarcd::ProjTest.teardown (ProjTest.fan:123)
  java.lang.reflect.Method.invoke (Method.java:498)
  fan.sys.Method.invoke (Method.java:559)
  fan.sys.Method$MethodFunc.callList (Method.java:204)
  fan.sys.Method.callList (Method.java:138)
  fanx.tools.Fant.runTest (Fant.java:208)
  fanx.tools.Fant.test (Fant.java:110)
  fanx.tools.Fant.test (Fant.java:32)
  fanx.tools.Fant.run (Fant.java:284)
  fanx.tools.Fant.main (Fant.java:327)
   Pass: testingExample::TestingExampleTest.testCanAddRecToFreshDb [2]
-- Run:  testingExample::TestingExampleTest.testNewRecNotAvailableInOtherTests...

TEST FAILED
sys::TestErr: Test failed: {mod:2017-02-24T12:36:04.3Z UTC, testing, id:p:test:r:2042e534-0e3d85d4} [dict::Dict3] is not null
  fan.sys.Test.err (Test.java:239)
  fan.sys.Test.fail (Test.java:231)
  fan.sys.Test.verifyNull (Test.java:77)
  fan.sys.Test.verifyNull (Test.java:71)
  testingExample::TestingExampleTest.testNewRecNotAvailableInOtherTests (TestingExampleTest.fan:29)
  java.lang.reflect.Method.invoke (Method.java:498)
  fan.sys.Method.invoke (Method.java:559)
  fan.sys.Method$MethodFunc.callList (Method.java:204)
  fan.sys.Method.callList (Method.java:138)
  fanx.tools.Fant.runTest (Fant.java:191)
  fanx.tools.Fant.test (Fant.java:110)
  fanx.tools.Fant.test (Fant.java:32)
  fanx.tools.Fant.run (Fant.java:284)
  fanx.tools.Fant.main (Fant.java:327)
sys::IOErr: Cannot delete: C:\SkySpark\skyspark-3.0.9\temp\test\log\log-2017-02-24.log
  fan.sys.LocalFile.delete (LocalFile.java:385)
  fan.sys.LocalFile.delete (LocalFile.java:381)
  fan.sys.LocalFile.delete (LocalFile.java:381)
  fan.sys.Test.tempDir (Test.java:266)
  skyarcd::ProjTest.teardown (ProjTest.fan:123)
  java.lang.reflect.Method.invoke (Method.java:498)
  fan.sys.Method.invoke (Method.java:559)
  fan.sys.Method$MethodFunc.callList (Method.java:204)
  fan.sys.Method.callList (Method.java:138)
  fanx.tools.Fant.runTest (Fant.java:208)
  fanx.tools.Fant.test (Fant.java:110)
  fanx.tools.Fant.test (Fant.java:32)
  fanx.tools.Fant.run (Fant.java:284)
  fanx.tools.Fant.main (Fant.java:327)

Time: 11067ms

Failed:
  testingExample::TestingExampleTest.testNewRecNotAvailableInOtherTests

***
*** 1 FAILURES [1 tests, 1 methods, 2 verifies]
***
```
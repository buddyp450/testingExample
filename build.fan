using build

class Build : BuildPod {

	new make() {
		podName = "testingExample"
		summary = "My Awesome testingExample Project"
		version = Version("1.0")

		meta = [
			"proj.name" : "testingExample"
		]

		depends = [
			"sys 1.0",
      "folio 3.0",
      "haystack 3.0",
      "skyarcd 3.0",
		]

		srcDirs = [`testingExampleExt/fan/`, `testingExampleExt/test/`]
		resDirs = [,]

		docApi = true
		docSrc = true
	}
}

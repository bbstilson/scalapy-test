ThisBuild / scalaVersion := "2.13.3"

libraryDependencies += "me.shadaj" %% "scalapy-core" % "0.4.0"

fork := true

import scala.sys.process._
javaOptions += s"-Djava.library.path=${"python3-config --prefix".!! + "/lib"}"

import me.shadaj.scalapy.py
import me.shadaj.scalapy.py.SeqConverters

import scala.io._

object Main {
  // val modelBytes: BufferedSource = Source.fromResource("trained_ranker_model_minimal.pickle.tar.gz")
  // val pickle = py.module("pickle")

  def main(args: Array[String]): Unit = {
    // println(pickle)

    val listLengthPython = py.Dynamic.global.len(List(1, 2, 3).toPythonProxy)
    println(listLengthPython)
  }
}

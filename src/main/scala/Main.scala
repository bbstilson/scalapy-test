import me.shadaj.scalapy.py
import me.shadaj.scalapy.py.SeqConverters

object Main {

  def main(args: Array[String]): Unit = {
    val listLengthPython = py.Dynamic.global.len(List(1, 2, 3).toPythonProxy)
    println(listLengthPython)
  }
}

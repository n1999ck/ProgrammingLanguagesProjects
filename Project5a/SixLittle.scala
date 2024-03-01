import scala.io.StdIn.readLine
import scala.util.Random

class SixLittle {
  private var words = List[String]()
  private var tokens = List[String]()
  private var hints = List[String]()

  def getWords: List[String] = {
    return words
  }

  def Ask(): Unit = {
    // Get 6 pairs of string inputs
    // each pair = 1 word with length >= 4 and a hint string
    // https://docs.scala-lang.org/scala3/book/taste-control-structures.html#for-loops-and-expressions
    for
      (i <- 1 to 6) {
      var word = ""
      while(word.length < 4){
        word = readLine("Please enter word " + i + ": ")
      }
      // https://docs.scala-lang.org/scala3/book/collections-classes.html#list
      // Prepends
      words = word :: words
      val hint = readLine("Please enter a hint for word " + word + ": ")
      hints = hint :: hints
    }
  }

  def Prepare(): Unit = {
    // Break each word in half
    // be consistent for odd numbers
    var midpoint = 0
    for(word <- words) {
      if (word.length % 2 == 0){
        midpoint = word.length / 2
      }
      else {
        midpoint = (word.length / 2 - 0.5).toInt
      }
      var token1 = word slice(0, midpoint)
      tokens = token1.toUpperCase :: tokens
      var token2 = word slice(midpoint, (word.length))
      tokens = token2.toUpperCase :: tokens
    }
    // shuffle tokens
    // https://alvinalexander.com/source-code/scala-how-to-shuffle-list-randomize/
    tokens = Random.shuffle(tokens)
  }

  def Display(): Unit = {
    // Display the title
    println("\nSix Little Words(Scala)\n")
    // Display table of tokens, 4 across in 3 rows
    println("Partial Words:")
    for( t <- tokens ) {
      print(t + " ")
      if (tokens.indexOf(t) == 3 || tokens.indexOf(t) == 7) {
        println()
      }
    }
    println("\n\nHints:")
    // Display hints
    hints.foreach(println)

    // Display answer key
    println("\nAnswer Key:")
    words.foreach(println)
  }

  def Run(): Unit = {
    // Clear all collections
    // Call ask
    Ask()
    // Call prepare
    Prepare()
    // Call display
    Display()
  }

}

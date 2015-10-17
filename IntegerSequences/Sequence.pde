// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  /**
   * The sequence author
   */
  abstract String author();
  
  /**
   * The sequence description
   */
  abstract String description();
  
  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);
  
  /**
   * Returns the first n seq terms as an array.
   */
  int [] asArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  
  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.asString(n))
   */
  String asString(int n) {
    return Arrays.toString(asArray(n));
  }
  
  // All display functions must scale the canvas properly
  
  /**
   * Display the sequence as you wish
   */
  abstract void display();
   
  /**
   * Display sequence as a bar chart: https://en.wikipedia.org/wiki/Bar_chart
   * Warning: Should be implemented here in the super class!
   */
  void barChart() {
    //TODO misssing implementation
  }
  
  /**
   * Display sequence as a line chart: https://en.wikipedia.org/wiki/Line_chart
   * Warning: Should be implemented here in the super class!
   */
  void lineChart() {
    //TODO misssing implementation
  }
  
  /**
   * Display sequence as a curve firring: https://en.wikipedia.org/wiki/Curve_fitting
   * Warning: Should be implemented here in the super class!
   */
  void curveFitting() {
    //TODO misssing implementation
  }
}
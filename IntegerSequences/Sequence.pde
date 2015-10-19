// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  abstract String author();
  abstract String description();
  abstract int compute(int n);
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
      return seq;
  }
  String toString(int n) {
    return Arrays.toString(toArray(n));
  } 
  abstract void display(int n);
//  void barChart(int n) {
    //TODO misssing implementation
//  }
  
//  void lineChart(int n) {
    //TODO misssing implementation
//  }
  
//  void curveFitting(int n) {
    //TODO misssing implementation
//  }
}
// **********************************************************
// Assignment2:
// Student1:
// CDF user_name: c6bianxi
// UT Student #: 1000724219
// Author: Xiao Xia Bian
//
// Student2:
// CDF user_name: c5lobugl
// UT Student #: 1002161741
// Author: Paul LoBuglio
//
// Student3:
// CDF user_name: c5aiyife
// UT Student #: 1002729256
// Author: Yifei Ai
//
// Student4:
// CDF user_name: c5zhanii
// UT Student #: 1002729256
// Author: Mohan Zhang
//
//
// Honor Code: I pledge that this program represents my own
// program code and that I have coded on my own. I received
// help from no one in designing and debugging my program.
// I have also read the plagiarism section in the course info
// sheet of CSC 207 and understand the consequences.
// *********************************************************
package driver;

import java.util.Scanner;
import Commands.*;
import System.FileSystem;

public class JShell {

  public static FileSystem fs = FileSystem.SINGLE_INSTANCE;

  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    Command task;
    while (true) {
      System.out.print("#/ ");
      String input = in.nextLine();
      task = Command.newCommand(input);
      History.addToHist(input);
      task.execute();
      if (task instanceof Exit) {
        break;
      }
    }
  }
}

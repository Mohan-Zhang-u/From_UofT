package Commands;

import System.FileSystem;
import driver.JShell;

/**
 * Command Pwd, intended to print the current working directory of the shell.
 * This is a subclass of Command
 *
 */
public class Pwd extends Command {

  /**
   * The mock File System
   */
  private FileSystem fs;
  /**
   * Array of command arguments, excluding whitespace
   */


  /**
   * Constructor for Pwd. Initializes commandKeywords and the FileSystem
   * 
   * @param input
   * @param fs
   */

  private String output;

  public Pwd(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  /**
   * Execute the command, prints the working directory of fs.
   */
  public void execute() {
    if (!validString()) {
      invalidArgList();
    } else {
      output = fs.getWorkingDir().getStringPath();
      super.printOutput(output, commandKeywords);
    }
  }

  /**
   * Returns false if any arguments are given to Pwd
   */
  public boolean validString() {
    return commandKeywords.length == 1 || commandKeywords.length == 3;
  }

  /**
   * Error message for an invalid argument list
   */
  public void invalidArgList() {
    System.out.println("Error: pwd takes 0 arguments");
  }



}

package Commands;

import java.util.Arrays;

import System.Directory;
import System.FileSystem;
import driver.JShell;

/**
 * Initializing the Cd class
 */
public class Cd extends Command {

  private FileSystem fs;

  /**
   * Constructor
   * 
   * @param input: user input
   * @param fs: FileSystem
   */
  public Cd(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  /**
   * Execute the method
   */
  public void execute() {
    if (!invalidArgs()) {
      Directory newDir = fs.getDirByPath(commandKeywords[1]);
      if (newDir != null) {
        fs.setworkingDir(newDir);
      }
    }
  }

  // check wether there's more than 1 commandKeywords
  public boolean invalidArgs() {
    if (!super.validArg(2, commandKeywords)){
      System.out.println("Error: 'cd' takes 1 argument (or 3 with redirect)");
      return true;
    }
    return false;
  }



}

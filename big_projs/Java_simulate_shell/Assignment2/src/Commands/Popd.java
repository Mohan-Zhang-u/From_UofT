package Commands;

import System.FileSystem;
import driver.JShell;

/**
 * Initializing the Pushd class
 */
public class Popd extends Command {

  private FileSystem fs;


  /**
   * Constructor
   * 
   * @param input: user input
   * @param fs: FileSystem
   */
  public Popd(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  /**
   * Execute the method
   */
  public void execute() {
    if (!validString()) {
      invalidArgList();
    } else if (fs.getDirStack().empty()) {
      System.out.println("Error: directory stack empty");
    } else {
      String goalDir = (String) fs.getDirStack().pop();
      // print the directory clients are going into
      System.out.println(goalDir);
      // change the directory into aimed directory
      String[] roots = goalDir.split("/");
      // set working dir to root
      if (roots.length == 0) {
        this.fs.setworkingDir(this.fs.getRoot());
      } else {
        this.fs.setworkingDir(this.fs.getDirByPath(goalDir));
      }
    }
  }

  // check wether there's 0 parameter
  public boolean validString() {
    return commandKeywords.length == 1;
  }

  // print errors.
  public void invalidArgList() {
    System.out.println("Error: popd takes exact 1 arguments");
  }
}

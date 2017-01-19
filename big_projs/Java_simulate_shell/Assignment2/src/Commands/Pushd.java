package Commands;

import System.Directory;
import System.FileSystem;
import driver.JShell;

/**
 * Initializing the Pushd class
 */
public class Pushd extends Command {

  private FileSystem fs;


  /**
   * Constructor
   * 
   * @param input: user input
   * @param fs: FileSystem
   */
  public Pushd(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  /**
   * Execute the method
   */
  public void execute() {
    if (!validString()) {
      invalidArgList();
    } else {
      // find oldDir and newDir.
      String oldDir = this.fs.getWorkingDir().getStringPath();
      if (commandKeywords.length == 2
          && fs.getDirByPath(commandKeywords[1]) != null) {
        // print informations of pushd
        System.out.println(commandKeywords[1] + " ~ " + oldDir);
        String[] roots = commandKeywords[1].split("/");
        Directory newDir;
        // set working dir to root
        if (roots.length == 0) {
          this.fs.setworkingDir(this.fs.getRoot());
        } else {
          this.fs.setworkingDir(this.fs.getDirByPath(commandKeywords[1]));
        }
        // push oldDir into stack
        fs.getDirStack().push(oldDir);
        // change current directory to newDir
      } else {
        System.out.println("Must provide a valid file path");
      }
    }
  }

  // check wether there's more than 1 commandKeywords
  public boolean validString() {
    return commandKeywords.length > 1;
  }

  // print errors.
  public void invalidArgList() {
    System.out.println("Error: Pushd takes at least 1 arguments ");
  }
}

package Commands;

import java.util.Iterator;

import System.Directory;
import System.File;
import System.FileSystem;
import driver.JShell;

public class Cat extends Command {
  private FileSystem fs;
  private String stdOut;


  /**
   * Constructor
   * 
   * @param input user input
   * @param fs filesystem so that we can track the directory
   */
  public Cat(String input) {
    super(input);
    this.fs = JShell.fs;
    stdOut = "";
  }


  public void execute() {
    if (!invalidArgs()) {
      int length = commandKeywords.length;
      if (length >= 2) {
        for (int i = 1; i < (super.fileOut() ? length - 2 : length); i++) {
          String[] temp = commandKeywords[i].split("/");
          String fName = temp[temp.length - 1];
          Directory dir;
          boolean found = false;
          if (commandKeywords[i].indexOf(fName) != 0) {
            dir = fs.getDirByPath(commandKeywords[i].substring(0,
                commandKeywords[i].indexOf(fName)));
          } else {
            dir = fs.getWorkingDir();
          }
          if (dir == null) {
            return;
          }
          for (Iterator<File> it = dir.getFiles().iterator(); it.hasNext();) {
            File file = it.next();
            if (file.getName().equals(fName)) {
              String extraLines = "\n\n\n";
              stdOut += (file.getName() + ":\n" + file.getContents()
                  + (it.hasNext() ? extraLines : ""));
              found = true;
            }
          }
          if (!found) {
            System.out.println("No file named: " + fName);
          }
        }
      }
      super.printOutput(stdOut, commandKeywords);
    }
  }

  public boolean invalidArgs() {
    if (commandKeywords.length < 2) {
      System.out.println("Error: 'cat' requires at least 1 argument");
      return true;
    }
    return false;
  }
}

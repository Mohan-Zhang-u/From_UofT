package Commands;

import java.util.ArrayList;

import System.Directory;
import System.FileSystem;
import driver.JShell;

public class Ls extends Command {

  private FileSystem fs;
  private String stdOut;


  public Ls(String input) {
    super(input);
    this.fs = JShell.fs;
    stdOut = "";
  }

  public void execute() {
    ArrayList<Directory> dirs = new ArrayList<Directory>();
    int len = commandKeywords.length;
    if (commandKeywords.length == 1) {
      dirs.add(fs.getWorkingDir());
    } else {
      for (int i = 1; i < (super.fileOut() ? len - 2 : len); i++) {
        dirs.add(fs.getDirByPath(commandKeywords[i]));
      }
    }
    if (dirs.contains(null)) {
      return;
    }
    int i = 1;
    for (Directory dir : dirs) {
      if (commandKeywords.length > 1) {
        stdOut += dir.getName() + ":" + "\n";
      }
      String out = dir.getContents();
      stdOut += out + "\n";
      if (!(i++ == dirs.size())) {
        stdOut += "\n";
      }
    }
    super.printOutput(stdOut.substring(0, stdOut.length() - 1),
        commandKeywords);
  }
}

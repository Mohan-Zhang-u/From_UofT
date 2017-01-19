package Commands;

import System.Directory;
import System.FileSystem;
import driver.JShell;

public class Mkdir extends Command {

  // private String[] commandKeywords;
  private FileSystem fs;

  /**
   * Mkdir constructor, would be called in Jshell
   * 
   * @param input user inputs
   */
  public Mkdir(String input) {
    super(input);
    // commandKeywords = input.split("\\s+");
    this.fs = JShell.fs;
  }

  public String[] getCommandKeywords() {
    return commandKeywords;
  }

  public void setCommandKeywords(String[] commandKeywords) {
    this.commandKeywords = commandKeywords;
  }

  public void execute() {
    /**
     * find if keywords satisfy the format
     * 
     */
    int length = commandKeywords.length;
    if (commandKeywords.length >= 2 && commandKeywords[0].equals("mkdir")) {
      for (int i = 1; i <= length - 1; i++) {
        if (!commandKeywords[i].contains("/")) {
          mkdirForOneWordDir(commandKeywords[i], fs);
        } else {
          mkdirForPathDir(commandKeywords[i], fs);
        }
      }
    }
  }

  /**
   * This method would execute the commands eg: "mkdir xxxxx"
   * 
   * @param name the directory name that would be created
   */
  public void mkdirForOneWordDir(String name, FileSystem fs) {
    Directory CurrentWD = fs.getWorkingDir();
    Directory newdir = new Directory(name, CurrentWD);
    CurrentWD.addDir(newdir);
  }

  /**
   * This method would execute the commands eg: "mkdir xxx/xxx/xxx"
   * 
   * @param path The path that user inputs
   */
  public void mkdirForPathDir(String path, FileSystem fs) {
    String[] pathdir = path.split("/");
    String path1 = "";
    if (path.charAt(0) == '/') {
      path1 = "/";
      for (int i = 1; i <= pathdir.length - 2; i++) {
        path1 = path1 + pathdir[i] + "/";
      }
    } else {
      for (int i = 0; i <= pathdir.length - 2; i++) {
        path1 = path1 + pathdir[i] + "/";
      }
    }
    Directory dir = fs.getDirByPath(path1);
    if (dir != null) {
      dir.addDir(new Directory(pathdir[pathdir.length - 1], dir));
    }
  }
}

package Commands;

import java.io.File;

import System.Directory;
import System.FileSystem;
import driver.JShell;

/**
 * Initializing the cp class
 */
public class Cp extends Command {

  private FileSystem fs;
  private String OLDPATH;
  private String NEWPATH;


  /**
   * Constructor
   * 
   * @param input: user input
   * @param fs: FileSystem
   */
  public Cp(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  /**
   * Execute the method
   */
  public void execute() {
    if (!validCpCommandKeywords()){
      return;
    }
    this.OLDPATH = commandKeywords[1];
    this.NEWPATH = commandKeywords[2];
    
    // Recognize when oldDir and newDir release
    Directory oldDir = fs.getDirByPath(commandKeywords[1]);
    Directory newDir = fs.getDirByPath(commandKeywords[2]);
    File oldFile = fs.getFileByPath(commandKeywords[1]);
    File newFile = fs.getFileByPath(commandKeywords[2]);
    // copy the directory to another exist directory
    if (fs.cangetDirByPath(commandKeywords[1])&&
        fs.cangetDirByPath(commandKeywords[2])) {
      // figure out whether newDir is in oldDir
      if (newDir.getStringPath().contains(oldDir.getStringPath())){
        System.out.println(");
      }
    }
    // Directory addFile  addDir
    else if (){
      System.out.println("Error: you cannot copy a directory to a file");
      return false;
    }
    else if (){
      System.out.println("Error: you cannot copy a directory to a "
          + "directory that inside itself");
      return false;
    }
  }

  // check whether the cp command has 2 parameters
  public boolean validCpCommandKeywords() {
    if (commandKeywords.length !=2){
      System.out.println("Error: Cp command must take exactly 2 commands");
      return false;
    }
    else {
      return true;
    }
  }
  
  // this method execute recursively when copy, to check whether there
  // is something wrong while copying.
  public boolean validCpCommand() {
    
  }
  


}

package System;

import java.util.ArrayList;

/**
 * Represents a directory in the mock file system A Directory is a recursive
 * data structure; it contains a list of both the files belonging to that
 * directory and a list of Directories within the Directory. All directories
 * belong to a parent directory, except for the root directory.
 */
public class Directory {

  /**
   * Represents the directory name
   */
  private String dirName;
  /**
   * Represents the files within the directory. File names must be unique at the
   * directory level. File names must not contain whitespace of special
   * characters
   */
  private ArrayList<File> files = new ArrayList<File>();
  /**
   * Parent directory of this. Only null for root directory.
   */
  private Directory parent;
  /**
   * Represents the subdirectories within the directory. Directory names must be
   * unique at the directory level. Directory names must not contain whitespace
   * of special characters
   */
  private ArrayList<Directory> dirs = new ArrayList<Directory>();

  /**
   * Instantiates a new Directory, without a given parent. Should only be called
   * by FileSystem for the creation of the root dir, so this constructor is
   * protected
   * 
   * @param dirName The name of the Directory. Must be unique
   */
  protected Directory(String dirName) {
    this.dirName = dirName;
  }

  /**
   * Instantiates a new Directory with a given parent.
   * 
   * @param dirName The name of the directory
   * @param parent The directory's parent directory.
   */
  public Directory(String dirName, Directory parent) {
    this.dirName = dirName;
    this.parent = parent;
  }

  /**
   * Add a file to the directory. This will succeed if the filename is unique at
   * the directory level and does not contain special characters
   * 
   * @param f The file to be added
   * @return The filename is unique and valid, and can be added
   */
  public boolean addFile(File f) {
    boolean canAdd = validChars(f.getName());
    for (File x : files) {
      canAdd = canAdd && !x.getName().equals(f.getName());
    }
    if (canAdd) {
      files.add(f);
    }
    return canAdd;
  }

  /**
   * Add a subdirectory to the directory. This will succeed if the directory
   * name is unique at the directory level and does not contain special
   * characters
   * 
   * @param f The file to be added
   * @return The filename is unique and valid, and can be added
   */
  public boolean addDir(Directory dir) {
    boolean canAdd = validChars(dir.getName());
    for (Directory x : dirs) {
      canAdd = canAdd && !x.getName().equals(dir.getName());
    }
    if (canAdd) {
      dirs.add(dir);
    }
    return canAdd;
  }

  /**
   * Accessor for dirName
   * 
   * @return dirName
   */
  public String getName() {
    return dirName;
  }

  /**
   * Mutator for dirName
   * 
   * @param dirName the new directory name
   */
  public void setDirName(String dirName) {
    this.dirName = dirName;
  }

  /**
   * Accessor for parent
   * 
   * @return parent
   */
  public Directory getParent() {
    return parent;
  }

  /**
   * Mutator for parent
   * 
   * @param parent
   */
  public void setParent(Directory parent) {
    this.parent = parent;
  }
  
  /**
   * Get the path of a given Directory. Implemented recursively.
   * @param dir A given directory
   * @return An ArrayList representing the path of a Directory
   */
  public ArrayList<Directory> getPath(Directory dir){
    ArrayList<Directory> path = new ArrayList<Directory>();
    path.add(dir);
    if (dir.getParent() == null){
      return path;
    }
    for (Directory d: getPath(dir.getParent())){
      path.add(d);
    }
    return path;
  }

  /**
   * Tests whether a file/directory name has special characters.
   * 
   * @param name The name of the file or directory
   * @return String name does not contain any special characters
   */
  private boolean validChars(String name) {
    String notAllowed = " !@$&*()?:[]\"<>'`|={}\\/,;";
    for (int i = 0; i < name.length(); i++) {
      for (int j = 0; j < notAllowed.length(); j++) {
        if (name.charAt(i) == notAllowed.charAt(j)) {
          return false;
        }
      }
    }
    return true;
  }
  
  public Directory getSubdirByName(String name){
    for (Directory dir: dirs){
      if (dir.getName().equals(name)){
        return dir;
      }
    }
    return null;
  }
  
  public String getStringPath(){
    ArrayList<Directory> path = getPath(this);
    String pathStr = "/";
    for (Directory dir: path){
      pathStr += dir.getName() + "/";
    }
    return pathStr;
  }



}

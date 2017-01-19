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
  public Directory(String dirName) {
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
  public void addFile(File f) {
    if (f.getName().indexOf('.') == -1) {
      System.out.println("Error: File must have an extension");
      return;
    }
    boolean canAdd =
        validChars(f.getName().substring(0, f.getName().indexOf('.')));
    for (File x : files) {
      canAdd = canAdd && !x.getName().equals(f.getName());
    }
    if (canAdd) {
      files.add(f);
      f.setParent(this);
    } else {
      System.out.println("Error: This File already exists");
    }
  }

  /**
   * Add a subdirectory to the directory. This will succeed if the directory
   * name is unique at the directory level and does not contain special
   * characters
   * 
   * @param f The file to be added
   * @return The filename is unique and valid, and can be added
   */
  public void addDir(Directory dir) {
    boolean canAdd = validChars(dir.getName());
    if (canAdd) {
      for (Directory x : dirs) {
        canAdd = canAdd && !x.getName().equals(dir.getName());
      }
      if (canAdd) {
        dirs.add(dir);
        dir.setParent(this);
      } else {
        System.out.println("Error: This Directory already exists");
      }
    }
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
   * Sets this directory's name to dirName.
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
   * 
   * @param dir A given directory
   * @return An ArrayList representing the path of a Directory (in reverse
   *         order)
   */
  private ArrayList<Directory> getPathHelper(Directory dir) {
    ArrayList<Directory> path = new ArrayList<Directory>();
    path.add(dir);
    if (dir.getParent() == null) {
      return path;
    }
    for (Directory d : getPathHelper(dir.getParent())) {
      path.add(d);
    }
    return path;
  }

  /**
   * Get Path of a directory. Reverses result of getPathHelper()
   * 
   * @param dir Directory
   * @return An ArrayList representing the path of a Directory
   */
  public ArrayList<Directory> getPath(Directory dir) {
    ArrayList<Directory> old = getPathHelper(dir);
    ArrayList<Directory> flipped = new ArrayList<Directory>();
    for (int i = old.size() - 1; i >= 0; i--) {
      flipped.add(old.get(i));
    }
    return flipped;
  }


  /**
   * Tests whether a file/directory name has special characters.
   * 
   * @param name The name of the file or directory
   * @return String name does not contain any special characters
   */
  private boolean validChars(String name) {
    String notAllowed = " !@$&*()?:[]\"<>'`|={}\\/,.;";
    for (int i = 0; i < name.length(); i++) {
      for (int j = 0; j < notAllowed.length(); j++) {
        if (name.charAt(i) == notAllowed.charAt(j)) {
          System.out.println("Error: Name cannot contain special characters");
          return false;
        }
      }
    }
    return true;
  }

  /**
   * Check if the Directory is root
   * 
   * @return The directory is root?
   */
  public boolean isRoot() {
    return this.parent == null;
  }

  /**
   * Searches for a sub-directory given from a name
   * 
   * @param name The string name of the sub directory
   * @return The sub-directory or null if it does not exist.
   */
  public Directory getSubdirByName(String name) {
    for (Directory dir : dirs) {
      if (dir.getName().equals(name)) {
        return dir;
      }
    }
    return null;
  }

  /**
   * Get the path of the Directory in String format
   * 
   * @return Directory path represented as a string
   */
  public String getStringPath() {
    ArrayList<Directory> path = getPath(this);
    String pathStr = "/";
    for (int i = 1; i < path.size(); i++) {
      pathStr += path.get(i).getName() + "/";
    }
    return pathStr;
  }

  /**
   * Get the contents of the Directory (name of all sub directories and files)
   * 
   * @return String representing the contents of the Directory
   */
  public String getContents() {
    String contents = "";
    int i = 1;
    for (Directory d : dirs) {
      contents += d.getName();
      if (!(i++ == dirs.size()) || files.size() != 0) {
        contents += "\n";
      }
    }
    i = 1;
    for (File f : files) {
      contents += f.getName();
      if (!(i++ == files.size())) {
        contents += "\n";
      }
    }
    return contents;
  }

  /**
   * Get all of the Files belonging in to the directory
   * 
   * @return files
   */
  public ArrayList<File> getFiles() {
    return files;
  }

  /**
   * Get all of the sub-directories of the Directory
   * 
   * @return dirs
   */
  public ArrayList<Directory> getDirs() {
    return dirs;
  }
  
  public File getFileByName(String name){
    boolean found = false;
    for (File f: files){
      if (f.getName().equals(name)){
        return f;
      }
    }
    return null;
  }
}

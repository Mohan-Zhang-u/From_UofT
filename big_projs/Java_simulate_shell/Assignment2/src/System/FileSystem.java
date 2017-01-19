package System;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Stack;

/**
 * A FileSystem represents the mock FileSystem for JShell. FileSystem keeps
 * track of only the root directory, the working directory, the directory stack
 * (pushd and popd) and contains some useful public methods for traversing the
 * FileSystem
 *
 */
public enum FileSystem {
  SINGLE_INSTANCE;
  /**
   * Root represents the root directory of a FileSystem, represented by '/'
   */
  private Directory root;
  /**
   * The current working directory of the FileSystem.
   */
  private Directory workingDir;
  /**
   * The Directory Stack, used in pushd and popd
   */
  private Stack<String> dirStack;

  /**
   * Constructor for Filesystem, initializes root as the only directory with out
   * a parent, and by default sets workingDir to root, and creates an empty
   * dirStack
   */
   FileSystem() {
    root = new Directory("root"); // Though it is given the name 'root', this
                                  // name is hidden.
    workingDir = root;
    dirStack = new Stack<String>();
  }

  /**
   * Get the current working directory
   * 
   * @return this.workingDir
   */
  public Directory getWorkingDir() {
    return workingDir;
  }

  /**
   * Set a new root. Use if you want to create another FileSystem with a
   * different workingDir and dirStack, but the same File/Directory data (just
   * share the same reference to root)
   * 
   * @param root
   */
  public void setRoot(Directory root) {
    this.root = root;
  }

  /**
   * Get the root of the FileSystem
   * 
   * @return this.root
   */
  public Directory getRoot() {
    return root;
  }

  /**
   * Return the directory stack (pushd an popd)
   * 
   * @return this.dirStack
   */
  public Stack<String> getDirStack() {
    return dirStack;
  }

  /**
   * Change the current working directory.
   * 
   * @param workingDir
   */
  public void setworkingDir(Directory workingDir) {
    this.workingDir = workingDir;
  }

  /**
   * Returns whether the provided path is full or relative. Throws a
   * NullPointerException if the path is invalid
   * 
   * @param path The path of a file or directory
   * @return The file is a file path
   */
  private boolean fullPath(String path) {
    return path.charAt(0) == '/' || path.indexOf("root/") == 0;
  }

  /**
   * Gets a directory by a given string path(can either be full path or upon
   * current directory). Clients are advised to check for a null return value,
   * indicating that the directory was not found.
   * 
   * @param path The path String of the directory
   * @return The directory requested. Returns null if the path is invalid
   */
  public Directory getDirByPath(String path) {
    String[] dirs = path.split("/");
    Directory dir =
        fullPath(path) ? root : dirs[0].equals("..") ? workingDir.getParent()
            : dirs[0].equals(".") ? workingDir : workingDir;
    try {
      for (int i =
          fullPath(path) || dirs[0].equals("..") || dirs[0].equals(".") ? 1 :
            0; i < dirs.length; i++) {
        dir = dir.getSubdirByName(dirs[i]);
      }
      if (dir == null) {
        if (dirs[0].equals("..") && workingDir == root) {
          System.out.println("Error: You are in root, there is no parent.");
        } else {
          System.out.println("Error: No such Directory");
        }
        return null;
      }
    } catch (NullPointerException e) {
      System.out.println("Error: No such Directory");
      return null;
    }
    return dir;
  }
  
  /**
   * Figure out whether can get a directory according to the provided path
   * 
   * @param path The path String of the directory
   * @return boolean. Returns F if the path is invalid
   */
  public boolean cangetDirByPath(String path){
    if(getDirByPath(path)==null){
      return false;
    }
    return true;
  }
  
  /**
   * Gets a File by a given string path(can either be full path or upon
   * current directory). Clients are advised to check for a null return value,
   * indicating that the file was not found.
   * 
   * @param path The path String of the directory of file
   * @return The file requested. Returns null if the path is invalid or no such
   * file
   */
  public File getFileByPath(String path) {
    ArrayList<String> dirs1 =new ArrayList<String>
    (Arrays.asList(path.split("/")));
    String fileName = dirs1.get(dirs1.size()-1);
    dirs1.remove(dirs1.size()-1);
    String[] dirs = (String[]) dirs1.toArray(new String[dirs1.size()]);
    Directory presentDir =fullPath(path) ? root : workingDir;
    try {
      // find such directory
      for (int i =
          fullPath(path) || dirs[0].equals("..") || dirs[0].equals(".") ? 1 :
            0; i < dirs.length; i++) {
        presentDir = presentDir.getSubdirByName(dirs[i]);
      }
      if (presentDir == null) {
        System.out.println("Error: No such Directory");
        return null;
      }
      // find such file
      else{
        if (presentDir.getFileByName(fileName)== null){
          System.out.println("Error: No such file");
          return null;
        }
        else{
          return presentDir.getFileByName(fileName);
        }
      }
      
    } catch (NullPointerException e) {
      System.out.println("Error: No such Directory");
      return null;
    }
  }
  
  /**
   * Figure out whether can get a file according to the provided path
   * 
   * @param path The path String of the directory
   * @return boolean. Returns F if the path is invalid
   */
  public boolean cangetFileByPath(String path){
    if(getFileByPath(path)==null){
      return false;
    }
    return true;
  }
  
  /**
   * Copy a old directory to a new directory 
   * this is a recursive function
   * 
   * @param String oldDir: old directory
   * @param String newDir: new directory
   */
  public void cpDirToDir(String oldDirStr, String newDirStr){
    if (this.cangetDirByPath(oldDirStr)&&this.cangetDirByPath(newDirStr)) {
      Directory oldDir =this.getDirByPath(oldDirStr);
      Directory newDir =this.getDirByPath(newDirStr);
      if(oldDir.getStringPath().trim() == newDir.getStringPath().trim()){
        System.out.println("cannot copy identical directories");
      }
      else if (newDir.getStringPath().contains(oldDir.getStringPath())){
        System.out.println("cannot copy directories to its subdirectory");
      }
      else{
        Directory reDir = new Directory(oldDir.getName());
        reDir.setParent(newDir);
        newDir.addDir(reDir);
        // oldDir has no sub dir or sub file
        if (oldDir.getContents() == ""){
          return;
        }
     // oldDir has sub dir or sub file
        else{
          ArrayList<Directory> subDirs = oldDir.getDirs();
          ArrayList<File> subFiles = oldDir.getFiles();
          // add subdir recursively
          for (Directory d : subDirs) {
            cpDirToDir(reDir.getStringPath(), d.getStringPath());
          }
          // add subfiles
          for (File f : subFiles) {
            reDir.addFile(f);
            }
          }
        }
      }
    }
    
//    cpFileToDir()
  }


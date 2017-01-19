package System;

import java.util.ArrayList;

public class FileSystem {

  private Directory root;
  private Directory workingDir;

  public FileSystem() {
    root = new Directory("root");
    workingDir = root;
  }

  public Directory getworkingDir() {
    return workingDir;
  }


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
  private boolean fullPath(String path){
    return path.charAt(0) == '/';
  }

  /**
   * Gets a directory by a given string path. WARNING: Surround this method with
   * try/catch, and check for a null pointer exception (meaning the path is
   * invalid)
   * 
   * @param path The path String of the directory
   * @return The directory requested
   */
  public Directory getDirByPath(String path) {
    String[] dirs = path.split("/");
    Directory dir = fullPath(path) ? root : workingDir;
    for (int i = 0; i < dirs.length; i++) {
      dir = dir.getSubdirByName(dirs[i]);
    }
    return dir;
  }

}

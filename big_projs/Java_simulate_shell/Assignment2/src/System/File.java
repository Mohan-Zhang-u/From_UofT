package System;

/**
 * Represents a File in the mock file System, contains any contents in the form
 * of a String. All files constructed without specified contents have contents
 * "". All files exist within a Directory
 *
 */
public class File {
  /**
   * Represents the file name. Must be unique
   */
  private String name;
  /**
   * Represents the contents of the file
   */
  private String contents;
  /**
   * Represents the parent of the file
   */
  private Directory parent;


  /**
   * File Constructor that requires both a filename and file contents
   * 
   * @param name The filename
   * @param contents The contents of the file
   */
  private File(String name, String contents) {
    this.name = name;
    this.contents = contents;
  }

  /**
   * 
   * @param name
   * @return
   */
  public static File makeEmptyFile(String name) {
    return new File(name, "");
  }
  

  /**
   * Factory Method to return a new instance of a file with specified contents
   * 
   * @param name File name
   * @param contents File contents
   * @return new instance of File with specified name and contents
   */
  public static File makeNewFile(String name, String contents) {
    return new File(name, contents);
  }

  /**
   * Accessor for name
   * 
   * @return Value of name
   */
  public String getName() {
    return name;
  }

  /**
   * Mutator for name
   * 
   * @param name The new name
   * 
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * Accessor for contents
   * 
   * @return Value of contents
   */
  public String getContents() {
    return contents;
  }
  
  public void appendContents(String exten){
    contents += exten;
  }

  /**
   * Mutator for contents
   * 
   * @return The new contents
   */
  public void setContents(String contents) {
    this.contents = contents;
  }

  public Directory getParent() {
    return parent;
  }

  public void setParent(Directory parent) {
    this.parent = parent;
  }

}

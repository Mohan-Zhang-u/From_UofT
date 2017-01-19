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
   * File Constructor that requires just a filename
   * 
   * @param name The filename
   */
  public File(String name) {
    this.name = name;
    this.contents = "";
  }

  /**
   * File Constructor that requires both a filename and file contents
   * 
   * @param name The filename
   * @param contents The contents of the file
   */
  public File(String name, String contents) {
    this.name = name;
    this.contents = contents;
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

  /**
   * Mutator for contents
   * 
   * @return The new contents
   */
  public void setContents(String contents) {
    this.contents = contents;
  }

}

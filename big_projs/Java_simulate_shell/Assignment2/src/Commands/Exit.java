package Commands;

import System.FileSystem;
import driver.JShell;

/**
 * 
 * @author xiaoxia
 * @since 2019-02-24
 */
public class Exit extends Command {
  /**
   * Each class has instance variable fs, and input fn helps to set the current
   * directory commandKeywords are the input command exit is the boolean of the
   * 
   */
  private boolean exit;

  private FileSystem fs;

  /**
   * method for Exit class evaluate the correctness of the input command
   * 
   * @param input
   * @param fs
   */
  public Exit(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  /**
   * get the commandKeywords
   * 
   * @return commandKeywords
   */
  public String[] getCommandKeywords() {
    return commandKeywords;
  }

  /**
   * set the commandKeywords
   * 
   * @param commandKeywords
   */
  public void setCommandKeywords(String[] commandKeywords) {
    this.commandKeywords = commandKeywords;
  }

  /**
   * make exit boolean valuse as TRUE to exit the program
   */
  public void execute() {
    exit = true;
  }
}

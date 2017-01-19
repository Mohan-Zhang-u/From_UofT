package Commands;

import System.FileSystem;
import driver.JShell;

public class Echo extends Command {
  private FileSystem fs;
  private String[] condensed;
  private String stdOut;

  /**
   * Constructor
   * 
   * @param input user input
   * @param fs FileSystem
   */
  public Echo(String input) {
    super(input);
    this.fs = JShell.fs;
    this.stdOut = "";
  }


  public void execute() {
    condensed = super.commandArgsQuotesIgnored();
    if (!invalidArgs()) {
      stdOut += condensed[1];
      super.printOutput(stdOut, condensed);
    }

  }

  public boolean invalidArgs() {
    if (!super.validArg(2, condensed)) {
      System.out.println("Error: 'echo' takes 1 argument (or 3 with redirect)");
      return true;
    }
    return false;
  }
}
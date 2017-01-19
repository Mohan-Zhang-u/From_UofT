package Commands;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import System.Directory;
import System.File;
import System.FileSystem;
import driver.JShell;

/**
 * Superclass for all JShell Commands. Command should never be instantiated,
 * except in its subclasses. All Command types must override execute and
 * validString many should override invalidCommand. All Command types share the
 * behavior of: 1.Checking for command validity and printing an error message if
 * invalid. 2.Executing the Command if valid. 3.Printing the command if valid
 */
public class Command {

  /**
   * Represents keyword in a given command string
   */
  protected String[] commandKeywords;

  /**
   * Creates a command from string input
   * 
   * @param input Represents the original command string. All Command types
   *        should have this information upon instantiation ("input" should be
   *        passed to all subclass constructors)
   */
  protected Command(String input) {
    commandKeywords = input.trim().split("\\s+");
  }

  /**
   * Execute the Command if commandKeywords passes a common validity test.
   * Otherwise, a generic "Invalid Command" message is printed. Subclasses
   * should override, call the super method, and do a more specific check for
   * argument validity, then actually execute the command.
   */
  public void execute() {
    invalidCommand();
  }

  public static Command newCommand(String input) {
    switch (input.trim().split("\\s+")[0]) {
      case "cd":
        return new Cd(input.trim());
      case "ls":
        return new Ls(input.trim());
      case "mkdir":
        return new Mkdir(input.trim());
      case "pwd":
        return new Pwd(input.trim());
      case "exit":
        return new Exit(input.trim());
      case "man":
        return new Man(input.trim());
      case "pushd":
        return new Pushd(input.trim());
      case "popd":
        return new Popd(input.trim());
      case "history":
        return new History(input);
      case "echo":
        return new Echo(input.trim());
      case "cat":
        return new Cat(input.trim());
      case "get":
        return new Get(input.trim());
      default:
        return new Command(input.trim());
    }
  }


  /**
   * Generic invalid command message. Subclasses may override for a more
   * specific message.
   */
  public void invalidCommand() {
    System.out.println("'" + commandKeywords[0]
        + "' not recognized as a valid command. Type 'man' for JShell documentation");
  }

  /**
   * Check argument length/compatibility. Prints an Error if returning true Not
   * implemented in Command superclass
   * 
   * @return The Arguments are Valid
   */
  public boolean invalidArgs() {
    throw new UnsupportedOperationException(
        "Generic Command invalidArgs has no implementation");
  }

  /**
   * Does 'arr' have the accepted size? Or, if 'arr' specifies redirect, does
   * 'arr' have the accepted size + 2? Recommended to use for invalidArgs()
   *
   * @return See above
   */

  public boolean validArg(int acceptedSize, String[] arr) {
    int len = arr.length;
    return fileOut() ? (acceptedSize + 2 == len) : (acceptedSize == len);
  }


  /**
   * Checks whether commandKeywords has the arguments to redirect
   * 
   * @return Does the user want to
   */
  public boolean fileOut() {
    int len = commandKeywords.length;
    return len > 1 && (commandKeywords[len - 2].equals(">>")
        || commandKeywords[len - 2].equals(">"));
  }


  /**
   * If the Command succeeds, either writes output contents to a file, or prints
   * the output to the command line.
   */
  public void printOutput(String output, String[] arr) {
    FileSystem fs = JShell.fs;
    boolean printFile = fileOut();
    if (printFile) {
      String path = arr[arr.length - 1];
      int lSlashIndex = path.substring(0, path.length() - 1).lastIndexOf("/");
      String fName = path.substring(lSlashIndex + 1);
      Directory dir =
          lSlashIndex != -1 ? fs.getDirByPath(path.substring(0, lSlashIndex))
              : fs.getWorkingDir();
      if (dir.getFileByName(fName) == null) {
        dir.addFile(File.makeNewFile(fName, output));
      } else {
        if (arr[arr.length - 2].equals(">>")) {
          dir.getFileByName(fName).appendContents("\n" + output);
        } else {
          dir.getFileByName(fName).setContents(output);
        }
      }
    } else {
      System.out.println(output);
    }
  }

  /**
   * Returns commandKeywords back, with the difference being that it condenses
   * string elements that belong in a single quotation. For example ["echo",
   * ""hello", "world"", "<<" , "fName"] would return the array ["echo",
   * "hello world", "<<", "fName]
   * 
   * Useful for Commands like echo, that want to treat quotations as a single
   * argument (as opposed to the normal split by spaces)
   * 
   * @param commandKeywords
   * @return
   */
  public String[] commandArgsQuotesIgnored() {
    int originalLen = commandKeywords.length;
    // If comandKeywords[1] has both pairs of quotes, return the original array
    if (commandKeywords[1].charAt(0) == '"'
        && commandKeywords[1].charAt(commandKeywords[1].length() - 1) == '"') {
      return commandKeywords;
    }
    int j = 0;
    String quoted = "";
    if (commandKeywords[1].charAt(0) == '"') {
      quoted = commandKeywords[1];
      for (j = 2; j < originalLen; j++) {
        quoted += " " + commandKeywords[j];
        if ((commandKeywords[j]
            .charAt(commandKeywords[j].length() - 1) == '"')) {
          break;
        }
      }
    }
    // If there isn't a pair of quotes, return the original array
    if (quoted.substring(quoted.indexOf('\"')).indexOf("\"") == -1) {
      return commandKeywords;
    }
    // Otherwise, return a new array that condenses the quotation
    int resultLen = originalLen - (j - 1); // At this point, j - 1 represents
                                           // how many elements take up the
                                           // quotation
    String[] result = new String[resultLen];
    result[0] = "echo";
    result[1] = quoted;
    j++;
    for (int i = 2; i < result.length; i++) {
      result[i] = commandKeywords[j++];
    }
    return result;
  }
}

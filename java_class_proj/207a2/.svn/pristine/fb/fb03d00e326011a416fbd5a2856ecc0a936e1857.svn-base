package Commands;

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
  private String[] commandKeywords;

  /**
   * Creates a command Only Command types should call this constructor.
   * 
   * @param input Represents the original command string. All Command types
   *        should have this information upon instantiation ("input" should be
   *        passed to all subclass constructors)
   */
  protected Command(String input) {
    commandKeywords = input.split("\\s+");
  }

  /**
   * Execute the Command if commandKeywords passes a common validity test.
   * Otherwise, a generic "Invalid Command" message is printed. Subclasses
   * should override, call the super method, and do a more specific check for
   * argument validity, then actually execute the command.
   */
  public void execute() {
    if (!validString()) {
      invalidCommand();
      return;
    }
  }


  /**
   * Generic invalid command message. Subclasses may override for a more
   * specific message.
   */
  public void invalidCommand() {
    System.out.println("Invalid command, please try again");
  }
  
  /**
   * Generic invalid command message. Subclasses may override for a more
   * specific message.
   */
  public void invalidArgList() {
    System.out.println("Invalid command, please try again");
  }

  /**
   * Checks for String validity. In superclass, only a generic check is done to
   * see if the main command given (commandKeywords[0]) is handled by JShell.
   * All subclasses must override to further check for check validity of the
   * argument list
   * 
   * @return The command string is valid, and can be executed.
   */
  public boolean validString() {
    return (commandKeywords[0].equals("mkdir"))
        || (commandKeywords[0].equals("cd"))
        || (commandKeywords[0].equals("ls"))
        || (commandKeywords[0].equals("pwd"))
        || (commandKeywords[0].equals("pushd"))
        || (commandKeywords[0].equals("popd"))
        || (commandKeywords[0].equals("history"))
        || (commandKeywords[0].equals("exit"))
        || (commandKeywords[0].equals("cat"))
        || (commandKeywords[0].equals("echo"))
        || (commandKeywords[0].equals("man"));
  }

  /**
   * Prints the output of command. Some subclasses may need to override.
   */
  public void printOutput() {
    System.out.println(commandKeywords[0]);
    for (int i = 1; i < commandKeywords.length; i++) {
      System.out.print(commandKeywords[i]);
    }
    System.out.println();
  }
}

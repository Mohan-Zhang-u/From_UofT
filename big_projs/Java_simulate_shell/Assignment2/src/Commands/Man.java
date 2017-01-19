package Commands;

import java.util.Hashtable;

import System.FileSystem;
import driver.JShell;

/**
 * 
 * @author xiaoxia bian
 * @since 2016-02-29
 */
public class Man extends Command {

  /**
   * Each class has instance variable fs, and input fn helps to set the current
   * directory commandKeywords are the input command
   */
  private FileSystem fs;



  /**
   * method for Man class sets the current directory evaluate the correctness of
   * the input command
   * 
   * @param input
   * @param fs
   */
  public Man(String input) {
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
   * the execute function in Man class determine which command key words is get
   * its definition from a hash table
   */
  public void execute() {
    if (commandKeywords.length == 2) {
      getDefinition(commandKeywords[1]);
    }

  }

  /**
   * create a hash table with the command words as keys the definition as the
   * value get the definition of the key words that is needed
   * 
   * @param cmd
   */
  public static void getDefinition(String cmd) {
    Hashtable<String, String> defOfValidCommands =
        new Hashtable<String, String>();
    defOfValidCommands.put("exit", "exit \n Quits the program.");
    defOfValidCommands.put("mkdir", "mkdir DIR ...\n Creates directories,"
        + "taking as arguments the names of the directories.");
    defOfValidCommands.put("cd", "cd DIR \n Change directory to DIR");
    defOfValidCommands.put("ls",
        "ls [PATH ...] \n If no paths are given,"
            + "prints contents of the current directory. "
            + "\n If path refers to a" + "file, prints the file name. "
            + "\n If path refers to a directory, prints"
            + "directory name and contents of directory.");
    defOfValidCommands.put("pwd", "pwd \n Prints current working directory.");
    defOfValidCommands.put("pushd", "pushd DIR \n Saves the current working"
        + "directory to a stack \n and changes the current directory to DIR.");
    defOfValidCommands.put("popd", "popd \n Removes the top entry from the"
        + "stack and makes it the current directory.");
    defOfValidCommands.put("history",
        "history[number] \n Prints out the"
            + "history of commands entered. \n If a number is entered, shows that"
            + "many recentcommands.");
    defOfValidCommands.put("cat", "cat FILE \n Displays the contents of FILE.");
    defOfValidCommands.put("echo",
        "echo STRING [>OUTPUT] or echo STRING >>"
            + "OUTFILE \n If only STRING is given, prints STRING. \n If OUTFILE"
            + "is given, creates(or replaces if already existant) with a text"
            + "file containing STRING. \n If \">>\" is placed between STRING and"
            + "OUTFILE, appends OUTFILE with STRING.");
    defOfValidCommands.put("man", "man CMD \n shows documentation for CMD");
    String output = defOfValidCommands.get(cmd);
    System.out.println(output);

  }
}

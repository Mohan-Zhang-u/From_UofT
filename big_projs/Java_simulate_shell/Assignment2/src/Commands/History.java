package Commands;

import java.util.ArrayList;

import System.FileSystem;

/**
 * 
 * @author xiaoxia
 * @since 2016-03-3
 */
public class History extends Command {
  /**
   * Each class has instance variable fs, and input fn helps to set the current
   * directory commandKeywords are the input command
   *
   */
  private FileSystem fs;
  private String stdOut;


  /**
   * an array list that stores all the past input commands
   */
  public static ArrayList<String> hist = new ArrayList<String>();

  /**
   * method for History class evaluate the correctness of the input command
   * 
   * @param input
   * @param fs
   */
  public History(String input) {
    super(input);
    stdOut = "";
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
   * the execute function in History class class determine whether the command
   * is valid (the number range correctness) if is valid, then print out the
   * history commands that required
   * 
   */
  public void execute() {
    if (!invalidArgs()) {
      if (commandKeywords.length == 1) {
        checkHistory();
      } else if (commandKeywords.length == 2) {
        String histNum = commandKeywords[1];
        try {
          if (Integer.parseInt(histNum) > hist.size()
              || Integer.parseInt(histNum) < 1) {
            System.out.println("Error: Not enough history exists");
            return;
          }
        } catch (NumberFormatException e) {
          System.out.println("Error: Second paramater must be a number");
        }
        if (histNum.matches("\\d+") && histNum != "0") {
          checkHistoryNum(histNum);
        } else {
          System.out.println("Error: Argument must be a number");
        }
      }
      super.printOutput(stdOut.substring(0, stdOut.length() - 1),
          commandKeywords); //stdOut with 1 less \n
    }
  }

  public boolean invalidArgs() {
    if (!super.validArg(1, commandKeywords)
        && !super.validArg(2, commandKeywords)) {
      System.out.println("Error: 'history' takes at most 1 argument");
      return true;
    }
    return false;
  }

  /**
   * Adds inputs to history
   * 
   * @param commands commands is what the user inputs
   * @return void
   */
  public static void addToHist(String commands) {
    hist.add(commands);
  }


  /**
   * Checks and prints the history
   *
   * @param none
   * @return void
   */
  public void checkHistory() {
    for (int i = 1; i <= hist.size(); i++) {
      stdOut += i + " " + hist.get(i - 1) + "\n";
    }
  }

  /**
   * Checks and prints out last few history depending on number
   * 
   * @param stringNum is the number of recent inputs the user wants to see
   * @return void
   */
  public void checkHistoryNum(String stringNum) {
    int num = Integer.parseInt(stringNum);
    int recent = hist.size() - num;
    for (int i = 1; i <= num; i++) {
      int current = recent + i;
      stdOut += current + " " + hist.get(current - 1) + "\n";
    }
  }

}

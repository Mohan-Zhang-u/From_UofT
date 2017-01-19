// **********************************************************
// Assignment2:
// Student1:
// CDF user_name: c6bianxi
// UT Student #: 1000724219 
// Author: Xiao Xia Bian
//
// Student2:
// CDF user_name: c5lobugl
// UT Student #: 1002161741
// Author: Paul LoBuglio
//
// Student3:
// CDF user_name: c5aiyife
// UT Student #: 1002729256
// Author: Yifei Ai
//
// Student4:
// CDF user_name: c5zhanii
// UT Student #: 1002729256
// Author: Mohan Zhang
//
//
// Honor Code: I pledge that this program represents my own
// program code and that I have coded on my own. I received
// help from no one in designing and debugging my program.
// I have also read the plagiarism section in the course info
// sheet of CSC 207 and understand the consequences.
// *********************************************************
package driver;

import java.util.Scanner;
import javaClass.*;


public class JShell {
    
//all public so can use then outside the class
//static for variables not depending on the class
  public boolean exit = false;
  public static String[] commandKeywords;
  public static String input;
  public static Directory currentDirectory;
  
  
  public static void main(String[] args) {
    // TODO Auto-generated method stub
    while (exit != true) {
      System.out.print("#/:");
      input = new Scanner(System.in).nextLine();
      JShell.commandKeywords = input.replace('\t', ' ').trim().split(" +");
      //add the input to history class so can call it back any time
      History.addToHist(input);
      executeClass();
    }
  }
  
  
  
  private void executeClass(){
     switch (commandKeywords[0]){
         case "mkdir": Mkdir.go(commandKeywords); break;
         case "cd": Cd.go(commandKeywords); break;
         case "ls": Ls.go(commandKeywords); break;
         case "pwd": Pwd.go(commandKeywords); break;
         case "pushd": Pushd.go(commandKeywords); break;
         case "popd": Popd.go(commandKeywords); break;
         case "history": History.go(commandKeywords); break;
         case "cat": Cat.go(commandKeywords); break;
         case "echo": Echo.go(commandKeywords); break;
         case "man": Man.go(commandKeywords); break;
         default: System.out.println("Invalid Command,please try again");
        }
      
    }
  }
    
    
  

}

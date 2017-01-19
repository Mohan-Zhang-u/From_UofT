package Commands;
import System.FileSystem;

public class Pwd extends Command {
  
  private FileSystem fs;
  private String[] commandKeywords;
  private Pwd(String input, FileSystem fs) {
    super(input);
    commandKeywords = input.split("\\s+"); 
    this.fs = fs;
  }
  
  public void execute(){
    super.execute();
    if (!validString()){
      invalidArgList();
    }
    else{
    System.out.println(fs.getworkingDir().getStringPath());
    }
  }
  
  public boolean validString() {
    return commandKeywords.length == 1;
  }
  
  public void invalidArgList() {
    System.out.println("Error: pwd takes 0 arguments");
  }
  
  
  

}

package Commands;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import System.File;
import System.FileSystem;
import driver.JShell;

public class Get extends Command {

  private String output;
  private FileSystem fs;


  public Get(String input) {
    super(input);
    this.fs = JShell.fs;
  }

  public void execute() {
    if (!invalidArgs()) {
      String url = commandKeywords[1];
      try {
        URL address = new URL(url);
        URLConnection yc = address.openConnection();
        BufferedReader in =
            new BufferedReader(new InputStreamReader(yc.getInputStream()));
        String line;
        while ((line = in.readLine()) != null) {
          output += line + "\n";
        }
        in.close();
        int lSlashIndex = url.substring(0, url.length() - 1).lastIndexOf("/");
        String fName = url.substring(lSlashIndex + 1, url.length());
        File newFile = fs.getWorkingDir().getFileByName(fName);
        if (newFile == null) {
          newFile = File.makeNewFile(fName, output);
          fs.getWorkingDir().addFile(newFile);
        } else {
          newFile.setContents(output);
        }
      } catch (MalformedURLException e) {
        System.out.println("Error: Malformed URL");
      } catch (IOException e) {
        System.out.println("Error: Cannot connect to URL");
      }
    }
  }

  public boolean invalidArgs() {
    if (commandKeywords.length != 2) {
      System.out.println("Error: 'get' takes 1 argument");
      return true;
    }
    return false;
  }
}

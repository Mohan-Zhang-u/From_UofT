package test;

import static org.junit.Assert.*;

import org.junit.Test;

import System.FileSystem;
import Commands.Command;
import Commands.Mkdir;

public class CommandTest {

  @Test
  public void testValid() {
    FileSystem fs = FileSystem.SINGLE_INSTANCE;
    String input = "INVALID COMMAND";
    //Command c = new Command(input);
    //assertTrue(!c.validString());
    Command k = Command.newCommand("mkdir a b c");
    assertTrue(k instanceof Mkdir);
  }

}

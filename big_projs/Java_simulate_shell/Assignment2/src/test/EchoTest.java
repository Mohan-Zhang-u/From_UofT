package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import System.FileSystem;
import Commands.Echo;

public class EchoTest {

  private FileSystem fs;

  @Before
  public void init() {
    fs = FileSystem.SINGLE_INSTANCE;

  }

  @Test
  public void testEcho() {
    Echo task1 = new Echo("echo \"string\" > test.txt");
    task1.execute();
    assertTrue(fs.getWorkingDir().getFiles().size() == 1);
    assertTrue(fs.getWorkingDir().getFiles().get(0).getName()
        .equals("test.txt"));
    assertTrue(fs.getWorkingDir().getFiles().get(0).getContents()
        .equals("string"));
    Echo task2 = new Echo("echo \"moreText\" >> test.txt");
    task2.execute();
    assertTrue(fs.getWorkingDir().getFiles().size() == 1);
    assertTrue(fs.getWorkingDir().getFiles().get(0).getContents()
        .equals("string\nmoreText"));
    Echo task3 = new Echo("echo \"moreText\" >> anotherTest.txt");
    task3.execute();
    assertTrue(fs.getWorkingDir().getFiles().size() == 2);
  }

}

package test;

import static org.junit.Assert.*;

import org.junit.Test;

import System.FileSystem;
import Commands.*;

public class PushdandPopdTest {

  @Test
  public void test() {
    // test pushd with popd
    // create a simulation and test
    FileSystem fs = FileSystem.SINGLE_INSTANCE;
    String input;
    Command task;
    // initialize directories
    input = "  mkdir  a    b c ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    input = "  cd  a  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  mkdir  e  f ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  cd e ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  mkdir  g h ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  cd / ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    // test pushd . in root
    input = "  pushd  .  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    // test pushd .. in root
    input = "  pushd  ..  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    // test popd with more than one param in root
    input = "  popd  sadfads";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    input = "  popd sss fff  ff ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    input = "  cd a  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    input = "  popd  sddd ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    // check whether the stack is empty after popd out all things
    // in DirStack
    input = "  cd a  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  cd /  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    // test push in current dir
    input = "  pushd   a  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  pushd   e ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  pushd   h ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");
    // notice: this command is invalid here
    input = "  pushd   h ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/");
    input = "  cd /a/ ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd ads ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    // test pushd by full path
    input = "  pushd   /a  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  pushd   /a/e ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  pushd   /a/e/h ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");
    // notice: this command is invalid here
    input = "  pushd   /h ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  cd /a/ ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  popd ads ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    input = "  pushd   /a/e/h  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
    // test pushd .. and pushd .
    input = "  cd /a/e/h  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");
    input = "  pushd .. ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  pushd .  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  popd ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/");
    input = "  popd  ";
    task = Command.newCommand(input);
    task.execute();
    assertEquals(fs.getWorkingDir().getStringPath(), "/a/e/h/");

  }

}

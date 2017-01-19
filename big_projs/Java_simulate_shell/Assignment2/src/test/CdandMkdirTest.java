package test;
import static org.junit.Assert.*;

import org.junit.Test;

import Commands.Command;
import System.FileSystem;

public class CdandMkdirTest {

	@Test
	public void test() {
		// create a simulation and test
		FileSystem fs = FileSystem.SINGLE_INSTANCE;
		String input;
		Command task;
		// test the mkdir
		input = "  mkdir  a    b c ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test cd by current dir
		input = "  cd  a    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/a/");
		// test cd by full path
		input = "  cd  /b    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/");
		input = "  mkdir  e ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/");
		// test cd by full path
		input = "  cd  /b/e    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		// test cd .
		input = "  cd   .    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		// test cd ..
		input = "  cd  ..    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/");
		// test cd /
		input = "  cd  /     ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test cd not going out of loop
		input = "  cd  ..    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test cd not going out of loop
		input = "  cd  ..    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test cd not going out of loop
		input = "  cd  ..    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test cd .
		input = "  cd  .    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test cd going by full path
		input = "  cd  /b/e    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		// test cd going by full path with no such directory
		input = "  cd  /fff    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		// test cd going by current path with no such directory
		input = "  cd  fff    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		// test cd going by full path with more than one param
		input = "  cd  a vc d    ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		/*
		 *  testing mkdir from now on :
		 */
		// test mkdir by making a path puon current one 
		// though path that does not exist 
		input = "  mkdir  /ff/ff   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		input = "  cd  ff   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/b/e/");
		input = "  cd  /   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test mkdir by making a full path though path that does not exist 
		input = "  mkdir  /ff/ff   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		input = "  cd  /ff/ff   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		// test make several dir at one time by making a full path
		input = "  mkdir  /a/ff /a/yy  ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/");
		input = "  cd  /a/ff   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/a/ff/");
		input = "  cd  /a/yy   ";
		task = Command.newCommand(input);
		task.execute();
		assertEquals(fs.getWorkingDir().getStringPath(), "/a/yy/");
	}

}

package test;


import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import Commands.Cat;
import Commands.Cd;
import Commands.Echo;
import Commands.Ls;
import Commands.Mkdir;
import System.Directory;
import System.FileSystem;

public class FileSystemTest {
  private FileSystem fs;

  @Before
  public void init() {
    fs = FileSystem.SINGLE_INSTANCE;
    Directory d1 = new Directory("level1", fs.getRoot());
    Directory another = new Directory("another", fs.getRoot());
    Directory d2 = new Directory("level2", d1);
    fs.getRoot().addDir(d1);
    fs.getRoot().addDir(another);
    d1.addDir(d2);

  }

  @Test
  public void getDirByPathTest() {
    assertTrue(fs.getDirByPath("INVALID PATH") == null);
    assertTrue(fs.getDirByPath("/") == fs.getRoot());
    assertTrue(fs.getDirByPath("/level1/level2/").getName().equals("level2"));
    assertTrue(fs.getDirByPath("level1/level2/").getName().equals("level2"));
    assertTrue(fs.getDirByPath("./level1/level2/").getName().equals("level2"));
    fs.setworkingDir(fs.getRoot().getDirs().get(0));
    assertTrue(fs.getDirByPath("../another").getName().equals("another"));

  }
}

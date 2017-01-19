package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import System.Directory;
import System.File;
import System.FileSystem;

public class DirectoryTest {
  private Directory root;

  @Before
  public void init() {
    root = new Directory("root");
  }

  @Test
  public void addFileTest() {
    root.addFile(File.makeEmptyFile("hello.txt"));
    assertTrue(root.getFiles().size() == 1); // Check that one file was added
    root.addFile(File.makeEmptyFile("@nother.txt"));
    assertTrue(root.getFiles().size() == 1); // Check invalid file name
    root.addFile(File.makeEmptyFile("hello.txt"));
    assertTrue(root.getFiles().size() == 1); // Check duplicate name check
    root.addFile(File.makeEmptyFile("another.txt"));
    assertTrue(root.getFiles().size() == 2); // Ability to add multiple files

  }

  @Test
  public void addDirTest() {
    root.addDir(new Directory("folder", root));
    assertTrue(root.getDirs().size() == 1); // Check that one dir was added
    root.addDir(new Directory("@nother", root));
    assertTrue(root.getDirs().size() == 1); // Check invalid dir name
    root.addDir(new Directory("folder", root));
    assertTrue(root.getDirs().size() == 1); // Check duplicate name check
    root.addDir(new Directory("another", root));
    assertTrue(root.getDirs().size() == 2); // Ability to add multiple dirs
  }

  @Test
  public void pathTest() {
    assertTrue(root.getStringPath().equals("/"));
    Directory d1 = new Directory("level1", root);
    Directory d2 = new Directory("level2", d1);
    Directory d3 = new Directory("level3", d2);
    Directory d4 = new Directory("level4", d3);
    root.addDir(d1);
    d1.addDir(d2);
    d2.addDir(d3);
    d3.addDir(d4);
    assertTrue(d4.getStringPath().equals("/level1/level2/level3/level4/"));
  }

  @Test
  public void subDirByNameTest() {
    root.addDir(new Directory("another", root));
    assertTrue(root.getDirs().get(0).getName().equals("another"));

  }



}

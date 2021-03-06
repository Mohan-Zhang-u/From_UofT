//**********************************************************
//Assignment3:
//CDF user_name: c5zhanii
//UT Student #: 1002748716
//Author: Mohan Zhang
//
//
//Honor Code: I pledge that this program represents my own
//program code and that I have coded on my own. I received
//help from no one in designing and debugging my program.
//*********************************************************
package driver;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MyParser {

/**
* @param args
*/
public static void main(String[] args) {
 DEBUGStarterCode(args);
}


/*
* This is a debug/helper method to help you get started. Once you understand
* how this method is being used, you are free to refactor it, modify it, or
* change it, or remove it entirely in any way you like.
*/
private static void DEBUGStarterCode(String[] args) {
 try {
   System.out.println("DEBUG: URLS are " + args[0]);
   System.out.println("DEBUG: FileName is " + args[1]);
 } catch (Exception e) {
   System.out.println("Did you change the run configuration in"
       + "Eclipse for argument0 and argument 1?");
 }


 // TODO Auto-generated method stub
 String inputFiles[] = args[0].split(",");
 for (String inputFile : inputFiles) {
   DEBUGextractAuthorsName(inputFile);
 }
}


/*
* This is a debug/helper method to help you get started. Once you understand
* how this method is being used i.e. the String re, Pattern, Matcher and how
* the authors name is being extracted, feel free to remove this method or
* refactor it in any way you like.
*/
private static void DEBUGextractAuthorsName(String googleScholarURL) {
 try {
   MyParser googleScholarParser = new MyParser();
   String rawHTMLString = googleScholarParser.getHTML(googleScholarURL);

   String reForAuthorExtraction =
       "<span id=\"cit-name-display\" "
           + "class=\"cit-in-place-nohover\">(.*?)</span>";
   Pattern patternObject = Pattern.compile(reForAuthorExtraction);
   Matcher matcherObject = patternObject.matcher(rawHTMLString);
   while (matcherObject.find()) {
     System.out.println("DEBUG: Authors Name is " + matcherObject.group(1));
   }

 } catch (Exception e) {
   System.out.println("malformed URL or cannot open connection to "
       + "given URL");
 }
}



public String getHTML(String urlString) throws Exception {
 // create object to store html source text as it is being collected
 StringBuilder html = new StringBuilder();
 // open connection to given url
 URL url = new File(urlString).toURI().toURL();
 // create BufferedReader to buffer the given url's HTML source
 BufferedReader htmlbr =
     new BufferedReader(new InputStreamReader(url.openStream()));
 String line;
 // read each line of HTML code and store in StringBuilder
 while ((line = htmlbr.readLine()) != null) {
   html.append(line);
 }
 htmlbr.close();
 // convert StringBuilder into a String and return it
 return html.toString();
}
}

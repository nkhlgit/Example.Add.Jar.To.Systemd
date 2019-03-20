package com.LongLive;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.Files;
import java.time.LocalDateTime;

public class Main
{
    public static void main(String[] args)
    {
        int i;
        i=0;
        Path p1 = Paths.get("/tmp/longLiveLog.out");
        String newLine = System.getProperty("line.separator");
        LocalDateTime starTime = LocalDateTime.now();
        System.out.println("LongLive is born " + starTime  + newLine);
        while (true) {
                LocalDateTime now = LocalDateTime.now();
                if (i > 99){
                i = 0;
                }
                String content = "Hi count " + i++ + " " + now + newLine ;
                try {
                        Files.write(p1, content.getBytes());
                }
                catch(IOException e){
                        e.printStackTrace();
                        System.out.println("error in writing");
                 }
                try{
                        Thread.sleep(2000);
                }
                catch(InterruptedException e){
                        System.out.println("Error in slpeep");
                }
        }

    }
}

package com.ComeOnBaby.util;


import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.Arrays;

public class ImageEditFunctions {

    public static String updateImages(String images , MultipartFile[] files){
        ArrayList<String> imagesList = new ArrayList (Arrays.asList(images.split("<>")));

        String noticeFileNamesToReturn ="";

        int filesLength = files.length;
        int imagesLength = imagesList.size() + 1;



        int freeSpace = 10 - imagesLength;

        System.out.println("Files length " + filesLength + " Images length " + imagesLength + " Free space " + freeSpace);

        if (freeSpace < filesLength){
            int spaceToClear = filesLength - freeSpace -1;
            for(int i = 0; i < spaceToClear; i++){
                imagesList.remove(imagesList.size()-1);
            }
        }

        System.out.println("list size " + imagesList.size());

        //Save to file
        if (files.length != 0) {
            if (!files[0].isEmpty()) {
                String pathToSaveFile = "pictures/";
                SaveFile saveFile = new SaveFile(pathToSaveFile, files);
                ArrayList<String> fileNames = saveFile.saveFileAndGetName();

                imagesList.addAll(fileNames);

                noticeFileNamesToReturn = generateStringWithSeparatorFromArray(imagesList);

            }
        }


        return noticeFileNamesToReturn;
    }

    public static String generateStringWithSeparatorFromArray(ArrayList<String> fileNames){

        StringBuilder noticeFileNames = new StringBuilder();
        for (String name : fileNames) {
            noticeFileNames.append(name + "<>");
        }
        return noticeFileNames.toString();
    }

 /*   public static String saveOneImageAndReturnName (String images , MultipartFile[] files){



        return
    }
    */
}

package com.fssa.livre;

import java.util.ArrayList;
import java.util.List;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.v2.DbxClientV2;
import com.dropbox.core.v2.files.ListFolderResult;
import com.dropbox.core.v2.files.Metadata;

public class DropboxConnect {

  

    public List<String> retrievePdfNames(String folderPath) {
        List<String> pdfFileNames = new ArrayList<>();

        try {
            DbxRequestConfig config = DbxRequestConfig.newBuilder("dropbox/Livre-BooksForYou").build();
            DbxClientV2 client = new DbxClientV2(config, ACCESS_TOKEN);

            ListFolderResult result = client.files().listFolder(folderPath);

            while (true) {
                for (Metadata metadata : result.getEntries()) {
                    if (metadata.getName().toLowerCase().endsWith(".pdf")) {
                        String pdfFileName = metadata.getName();
                        pdfFileNames.add(pdfFileName);
                        System.out.println("PDF :" + pdfFileName);
                    }
                }

                if (!result.getHasMore()) {
                    break;
                }

                result = client.files().listFolderContinue(result.getCursor());

            }

        } catch (DbxException e) {
            e.printStackTrace();
        }

        return pdfFileNames;
    }

    public static void main(String[] args) {
       
        String folderPath = "/Books";

        
        try {
        	  DropboxConnect dc = new DropboxConnect();
            List<String> pdfFileNames = dc.retrievePdfNames(folderPath);

            System.out.println(pdfFileNames.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

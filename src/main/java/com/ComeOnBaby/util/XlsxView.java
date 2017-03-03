package com.ComeOnBaby.util;

import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.service.AppUserService;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by Oleksandr on 3/2/2017.
 */
public class XlsxView extends AbstractXlsxView {


    private List<AppUser> appUsers;

    @Override
    protected void buildExcelDocument(Map<String, Object> model,
                                      Workbook workbook,
                                      HttpServletRequest request,
                                      HttpServletResponse response) throws Exception {
        System.out.println("=================QQQQQQQQQQQQQQQQQ===============");
        // set the file name
        response.setHeader("Content-Disposition", "attachment; filename=\"users.xlsx\"");

        System.out.println("=================QQQQQQQQQQQQQQQQQ===============");
        // create sheet
        Sheet sheet = workbook.createSheet("users");
        System.out.println("=================QQQQQQQQQQQQQQQQQ===============");
        // create header
        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("ID");
        header.createCell(1).setCellValue("Login");
        header.createCell(2).setCellValue("E-mail");
        header.createCell(3).setCellValue("Birthday");
        header.createCell(4).setCellValue("Classification");
        header.createCell(5).setCellValue("Sex");

        // Create cells
        int rowCount = 1;
        for (AppUser appUser : appUsers) {
            Row fruitRow = sheet.createRow(rowCount++);
            fruitRow.createCell(0).setCellValue(appUser.getId());
            fruitRow.createCell(1).setCellValue(appUser.getPreferences().getNickname());
            fruitRow.createCell(2).setCellValue(appUser.getEmail());
            fruitRow.createCell(3).setCellValue(appUser.getPreferences().getBirth_year());
            fruitRow.createCell(4).setCellValue(appUser.getLoginType());
            fruitRow.createCell(5).setCellValue(appUser.getPreferences().getGender());
        }

    }


    public void setAppUserList(List<AppUser> appUsers){
        this.appUsers = appUsers;
    }
}
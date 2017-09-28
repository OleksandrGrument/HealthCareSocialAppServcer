package com.HealthCareSocialAppServer.excelView;

import com.HealthCareSocialAppServer.util.DataNoteByMonthWeek;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;


public class MonthlyWeeklyReportShowXlsx extends AbstractXlsxView {

    private DataNoteByMonthWeek dataNoteByMonthWeek;

    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook,
                                      HttpServletRequest request,
                                      HttpServletResponse response) throws Exception {
        // set the file name
        response.setHeader("Content-Disposition", "attachment; filename=\"Report.xlsx\"");

        // create sheet
        Sheet sheet = workbook.createSheet("users");

        // create header
        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("Recommended food");
        header.createCell(1).setCellValue("Nuts");
        header.createCell(2).setCellValue("Car");
        header.createCell(3).setCellValue("Exercise");
        header.createCell(4).setCellValue("Sleep before midnight");
        header.createCell(5).setCellValue("Average sleep time");
        header.createCell(6).setCellValue("Water ingestion");
        header.createCell(7).setCellValue("Eun-hoon / Slut");
        header.createCell(8).setCellValue("Vitamin");
        header.createCell(9).setCellValue("Folic acid");
        header.createCell(10).setCellValue("Less than one cup of coffee");
        header.createCell(11).setCellValue("Alcohol");
        header.createCell(12).setCellValue("No smoking");
        header.createCell(13).setCellValue("Emotion");
        header.createCell(14).setCellValue("Body Mass Index");

        // Create cells
        int rowCount = 1;

        Row fruitRow = sheet.createRow(rowCount);
        fruitRow.createCell(0).setCellValue(dataNoteByMonthWeek.recommendedFood());
        fruitRow.createCell(1).setCellValue(dataNoteByMonthWeek.nuts());
        fruitRow.createCell(2).setCellValue(dataNoteByMonthWeek.typeOfTea());
        fruitRow.createCell(3).setCellValue(dataNoteByMonthWeek.exercise());
        fruitRow.createCell(4).setCellValue(dataNoteByMonthWeek.sleepBeforeMidnight());
        fruitRow.createCell(5).setCellValue(dataNoteByMonthWeek.averageSleepTime());
        fruitRow.createCell(6).setCellValue(dataNoteByMonthWeek.waterIngestion());
        fruitRow.createCell(7).setCellValue(dataNoteByMonthWeek.slut());
        fruitRow.createCell(8).setCellValue(dataNoteByMonthWeek.vitamin());
        fruitRow.createCell(9).setCellValue(dataNoteByMonthWeek.folicAcid());
        fruitRow.createCell(10).setCellValue(dataNoteByMonthWeek.coffee());
        fruitRow.createCell(11).setCellValue(dataNoteByMonthWeek.alcohol());
        fruitRow.createCell(12).setCellValue(dataNoteByMonthWeek.smoking());
        fruitRow.createCell(13).setCellValue(dataNoteByMonthWeek.emotion());
        fruitRow.createCell(14).setCellValue(dataNoteByMonthWeek.bodyMassIndex());
    }

    public void setDataNoteByMonthWeek(DataNoteByMonthWeek dataNoteByMonthWeek) {
        this.dataNoteByMonthWeek = dataNoteByMonthWeek;
    }
}

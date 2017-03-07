package com.ComeOnBaby.XlsxView;

import com.ComeOnBaby.model.Note;
import com.ComeOnBaby.util.DataNoteByMonth;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by mr_je on 06.03.2017.
 */
public class MonthlyReportShowXlsx extends AbstractXlsxView {

    private DataNoteByMonth dataNoteByMonth;

    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook,
                                      HttpServletRequest request,
                                      HttpServletResponse response) throws Exception {
        // set the file name
        response.setHeader("Content-Disposition", "attachment; filename=\"MonthlyReport.xlsx\"");

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
        fruitRow.createCell(0).setCellValue(dataNoteByMonth.recommendedFood());
        fruitRow.createCell(1).setCellValue(dataNoteByMonth.nuts());
        fruitRow.createCell(2).setCellValue(dataNoteByMonth.car());
        fruitRow.createCell(3).setCellValue(dataNoteByMonth.exercise());
        fruitRow.createCell(4).setCellValue(dataNoteByMonth.sleepBeforeMidnight());
        fruitRow.createCell(5).setCellValue(dataNoteByMonth.averageSleepTime());
        fruitRow.createCell(6).setCellValue(dataNoteByMonth.waterIngestion());
        fruitRow.createCell(7).setCellValue(dataNoteByMonth.slut());
        fruitRow.createCell(8).setCellValue(dataNoteByMonth.vitamin());
        fruitRow.createCell(9).setCellValue(dataNoteByMonth.folicAcid());
        fruitRow.createCell(10).setCellValue(dataNoteByMonth.coffee());
        fruitRow.createCell(11).setCellValue(dataNoteByMonth.alcohol());
        fruitRow.createCell(12).setCellValue(dataNoteByMonth.smoking());
        fruitRow.createCell(13).setCellValue(dataNoteByMonth.emotion());
        fruitRow.createCell(14).setCellValue(dataNoteByMonth.bodyMassIndex());
    }

    public void setDataNoteByMonth(DataNoteByMonth dataNoteByMonth) {
        this.dataNoteByMonth = dataNoteByMonth;
    }
}

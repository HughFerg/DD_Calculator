/**
 *
 * Created by hughferguson on 7/31/17.
 *
 * Program comparing academic calendars of colleges -
 * Should ideally compare 2 colleges head to head +
 *     return overlaps of multiple colleges
 *     i.e. several overlaps (1, 2, ... all overlap)
 *
 */
import java.util.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
;import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;


public class CollegeCalendars {

    static SimpleDateFormat format = new SimpleDateFormat("MM-dd-yy");

    public CollegeCalendars(){

    }

    public static void main (String[] args){

        Date[] vacations = {
                fromStringToDate("10-7-2017"),
                fromStringToDate("10-9-2017")
        };

        Date[] vacations1 = {
                fromStringToDate("10-6-2017"),
                fromStringToDate("10-11-2017")
        };

        School Northeastern = new School("Northeastern University", vacations);
        School Clarkson = new School("Clarkson University", vacations1);

        overLap(Northeastern, Clarkson);
    }

    private static final Date fromStringToDate (String dateInString) {

        try {

            return format.parse(dateInString);

        } catch (ParseException e) {

            return null;

        }
    }

    private static void overLap (School school1, School school2){

        if (school1.VACATIONS[0].before(school2.VACATIONS[1]) && school2.VACATIONS[0].before(school1.VACATIONS[1])){

            String startDay = "";
            String endDay = "";

            if (school1.VACATIONS[0].before(school2.VACATIONS[0])) startDay = school1.VACATIONS[0].toString();
            else startDay = school2.VACATIONS[0].toString();

            startDay = startDay.replaceAll( " 00:00:00 EDT ", " ");  // removes time and time zone

            if (school1.VACATIONS[1].before(school2.VACATIONS[1])) endDay = school1.VACATIONS[1].toString();
            else endDay = school2.VACATIONS[1].toString();

            endDay = endDay.replaceAll( " 00:00:00 EDT ", " ");  // removes time and time zone


            System.out.println("These school's vacations overlap from " + startDay + " to " + endDay);


        }
    }
}

/**
 * Created by hughferguson on 7/31/17.
 *
 * Models a school with a name and array of vacation dates
 *
 */

import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.LocalDate;
import java.time.Month;

public class School {

    SimpleDateFormat format = new SimpleDateFormat("M d y");

    String NAME;
    Date[] VACATIONS;

    public School (String n, Date[] vacations){
        // Vacations array is array of dates with format
        // Month - Day - Year

        NAME = n;
        VACATIONS = vacations;

    }
}

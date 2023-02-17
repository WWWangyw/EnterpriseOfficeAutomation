using System;
using System.Linq;

public class CalendarManager
{
    public void AddCalendar(string employeename, string title, string text, DateTime date)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        T_Calendar T_c = new T_Calendar { 
            Cld_Content = text, 
            Cld_Date = DateTime.Now.Date,
            Cld_Title = title,
            EmployeeName = employeename
        };
        db.T_Calendar.InsertOnSubmit(T_c);
        db.SubmitChanges();
    }
}

using System;
using System.Linq;


public class WorkingHoursManager
{


    public bool SetWorkingHours(string starttime, string endtime)
    {

        DataBaseDataContext db = new DataBaseDataContext();
        if (GetStartWorkTime() == "")
        {
            T_WorkHourst T_wh = new T_WorkHourst { WH_StartTime = starttime, WH_EndTime = endtime };
            db.T_WorkHourst.InsertOnSubmit(T_wh);
        }
        else
        {
            T_WorkHourst T_wh2 = db.T_WorkHourst.First();
            T_wh2.WH_StartTime = starttime;
            T_wh2.WH_EndTime = endtime;
        }
        db.SubmitChanges();
        return true;
    }
    public string GetStartWorkTime()
    {
        string worktime = "";
        DataBaseDataContext db = new DataBaseDataContext();
        try
        {
            T_WorkHourst ts = db.T_WorkHourst.First();
            worktime = ts.WH_StartTime;
        }
        catch (System.InvalidOperationException)
        {
            worktime = "";
        }
        return worktime;
    }
    public string GetEndWorkTime()
    {
        string worktime = "";
        DataBaseDataContext db = new DataBaseDataContext();
        try
        {
            T_WorkHourst T_wh = db.T_WorkHourst.First();
            worktime = T_wh.WH_EndTime;
        }
        catch (System.InvalidOperationException)
        {
            worktime = "";
        }
        return worktime;
    }

    public void AddStartWorkTime(string name, string time)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        T_WorkingTime tt = new T_WorkingTime
        {
            EmployeeName = name,
            WT_OnWorking = time,
            WT_Date = DateTime.Now.Date
        };
        db.T_WorkingTime.InsertOnSubmit(tt);
        try
        {
            db.SubmitChanges();
        }
        catch (Exception ex)
        {
        }
    }

    public void UpdateEndWorkTime(string name, string time)
    {
        try
        {
            DataBaseDataContext db = new DataBaseDataContext();
            T_WorkingTime T_wh = db.T_WorkingTime.First(t => t.EmployeeName == name);
            T_wh.WT_OffWorking = time;
            db.SubmitChanges();
        }
        catch (Exception ex)
        {
        }
    }

}

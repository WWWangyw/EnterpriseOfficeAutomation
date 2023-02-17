using System;
using System.Linq;

public class DepartmentManager
{

    public bool AddDepartment(string deptname)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        T_Department T_dt = new T_Department { Dpt_Name = deptname };
        db.T_Department.InsertOnSubmit(T_dt);
        db.SubmitChanges();
        return true;
    }
    public bool DeleteDepartment(int  deptId)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        try
        {
            T_Department T_dt = db.T_Department.First(d => d.Dpt_ID == deptId);
            db.T_Department.DeleteOnSubmit(T_dt);
            db.SubmitChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
    public bool AddBulletin(string text)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        T_Bulletin T_b = new T_Bulletin { B_Content = text, B_Time = DateTime.Now.Date };
        db.T_Bulletin.InsertOnSubmit(T_b);
        db.SubmitChanges();
        return true;
    }
}

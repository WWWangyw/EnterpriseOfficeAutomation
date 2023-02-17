using System;
using System.Linq;

public class AssessManager
{
    public void AddAssess(string name, string data, DateTime date)
    {
        try
        {
            DataBaseDataContext db = new DataBaseDataContext();
            T_Assess T_a = new T_Assess
            {
                Ass_Date = date,
                Ass_Data = data,
                EmployeeName = name
            };
            db.T_Assess.InsertOnSubmit(T_a);
            db.SubmitChanges();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}

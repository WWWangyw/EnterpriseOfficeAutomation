using System;
using System.Linq;

public class StationManager
{

    public void AddApply(int deptId, string station, int count, string qft, string note)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        T_Apply T_a = new T_Apply { 
            Dpt_ID = deptId,
            Apl_Note = note, 
            Apl_Amount = count, 
            Apl_qualification = qft, 
            Apl_work = station
        };
        db.T_Apply.InsertOnSubmit(T_a);
        db.SubmitChanges();
    }


    public bool UpdateApply(T_Apply t_a)
    {
        DataBaseDataContext db = new DataBaseDataContext();


        try
        {
            T_Apply T_a_Old = db.T_Apply.First(d => d.Apl_ID == t_a.Apl_ID);
            if (t_a == null)
            {
                return false;
            }
            t_a.Dpt_ID = T_a_Old.Dpt_ID;

            T_a_Old = t_a;
            db.SubmitChanges();

            return true;
        }
        catch (Exception ex)
        {
            return false;
            //throw;
        }
    }
}

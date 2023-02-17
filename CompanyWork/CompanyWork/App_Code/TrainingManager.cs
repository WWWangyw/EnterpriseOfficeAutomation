using System;
using System.Linq;


public class TrainingManager
{
	public TrainingManager()
	{
	}
     
    public void AddTraining(string title, string text, DateTime datetime, string name)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        T_Training t = new T_Training {
            Trn_Text = text,
            Trn_Date=datetime, 
            Trn_Title=title,
            Trn_People=name 
        };
        db.T_Training.InsertOnSubmit(t);
        db.SubmitChanges();
    }
}

using System;
using System.Linq;
using System.Web.Security;


public class MessagerManager
{

    public bool SendMessage(string receive, string send, string title, string text)
    {
        if (Membership.FindUsersByName(receive) == null)
            return false;
        else
        {
            DataBaseDataContext db = new DataBaseDataContext();
            T_Message T_m = new T_Message { Msg_Receive = receive, 
                Msg_Send = send,
                Msg_Title = title, 
                Msg_Content = text,
                Msg_Status = false 
            };
            db.T_Message.InsertOnSubmit(T_m);
            db.SubmitChanges();
            return true;
        }
    }
    public void UpdateSign(int messageId)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        try
        {
            T_Message T_m = db.T_Message.First(m => m.Msg_ID == messageId);
            T_m.Msg_Status = true;
            db.SubmitChanges();
        }
        catch (System.InvalidOperationException)
        { 
        }
    }
    public static bool GetMessage(string username)
    {
        DataBaseDataContext db = new DataBaseDataContext();
        try
        {
           
            T_Message T_m = db.T_Message.First(m => m.Msg_Status == false && m.Msg_Receive == username);
            return true;
        }
        catch (System.InvalidOperationException)
        {
            return false;
        }
    }
}

using System;
using System.Data;
using System.Web;
using System.Web.Security;

public class OnlineManager
{

    public MembershipUserCollection GetUsers()
    {
        MembershipUserCollection muc = new MembershipUserCollection();
        foreach (MembershipUser mu in Membership.GetAllUsers())
        {
            if (mu.IsOnline)
                muc.Add(mu);
        }
        return muc;
    }
}


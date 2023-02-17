using System;
using System.Web.Security;


public class UserManager
{

    public MembershipUserCollection GetAllUsers()
    {
        return Membership.GetAllUsers();
    }
    public void DeleteUser(string UserName)
    {
        Membership.DeleteUser(UserName);
    }
}

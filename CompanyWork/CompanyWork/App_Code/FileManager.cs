using System;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web;

public class FileManager
{
    public DataTable GetFileList(string path)
    {
        DataTable dt = new DataTable();
        DataRow dr;
        DataColumn dc1 = new DataColumn();
        dc1.DataType = System.Type.GetType("System.String");
        dc1.ColumnName = "filename";
        DataColumn dc2 = new DataColumn();
        dc2.DataType = System.Type.GetType("System.String");
        dc2.ColumnName = "filesize";
        dt.Columns.Add(dc1);
        dt.Columns.Add(dc2);
        DirectoryInfo di = new DirectoryInfo(path);
        foreach (FileInfo fi in di.GetFiles())
        {
            dr = dt.NewRow();
            dr["filename"] = fi.Name;
            dr["filesize"] = ((double)fi.Length / 1024).ToString("N03") + " k";
            dt.Rows.Add(dr);
        }
        return dt;
    }
    public DataTable SearchFile(string path, string pattern)
    {
        DataTable dt = new DataTable();
        DataRow dr;
        DataColumn dc1 = new DataColumn();
        dc1.DataType = System.Type.GetType("System.String");
        dc1.ColumnName = "filename";
        DataColumn dc2 = new DataColumn();
        dc2.DataType = System.Type.GetType("System.String");
        dc2.ColumnName = "filesize";
        dt.Columns.Add(dc1);
        dt.Columns.Add(dc2);
        DirectoryInfo di = new DirectoryInfo(path);
        
        foreach (FileInfo fi in di.GetFiles(pattern))
        {
            dr = dt.NewRow();
            dr["filename"] = fi.Name;
            dr["filesize"] = ((double)fi.Length / 1024).ToString("N03") + " k";
            dt.Rows.Add(dr);
        }
        return dt;
    }

}

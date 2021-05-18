using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class branchesLogic
    {
        DAL d = new DAL();
        public bool checkBranchName(string branchName)
        {//check if there is branch with this name
            string sql = String.Format("SELECT branchName FROM branches WHERE branchName ='{0}'", branchName);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public string getBranchCode(string branchName)
        {//return the code branch of this branch name
            string sql = String.Format("SELECT branchCode FROM branches WHERE branchName ='{0}'", branchName);
            DataSet ds = d.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }
    }
}
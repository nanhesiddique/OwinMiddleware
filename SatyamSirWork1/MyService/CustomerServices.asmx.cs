using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using SatyamSirWork1.Models;

namespace SatyamSirWork1.MyService
{
    /// <summary>
    /// Summary description for CustomerServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    
    [System.Web.Script.Services.ScriptService]
    public class CustomerServices : System.Web.Services.WebService
    {

        [WebMethod]
        public void GetCustomer(int pageNumber,int pageSize)
        {
            List<tbl_customer> tb = new List<tbl_customer>();
            string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetCustomer", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@PageNumber",
                    Value=pageNumber
                });
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName= "@PageSize",
                    Value=pageSize
                });
                con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    tbl_customer cus = new tbl_customer();
                    cus.cust_id = Convert.ToInt32(rdr["cust_id"]);
                    cus.cust_age = Convert.ToInt32(rdr["cust_age"]);
                    cus.cust_name = Convert.ToString(rdr["cust_name"]);
                    cus.cust_email = Convert.ToString(rdr["cust_email"]);
                    cus.cust_contact = Convert.ToString(rdr["cust_contact"]);
                    cus.cust_pincode = Convert.ToString(rdr["cust_pincode"]);
                    cus.cust_address = Convert.ToString(rdr["cust_address"]);
                    tb.Add(cus);
               }
            }
            JavaScriptSerializer json = new JavaScriptSerializer();
            Context.Response.Write(json.Serialize(tb));
        }
    }
}

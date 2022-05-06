using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ado_Assignment_2._1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectStr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            Bus1(connectStr);

            Bus2(connectStr);

            Bus3(connectStr);
        }

        public void Bus1(String connectStr)
        {
            using (SqlConnection conn = new SqlConnection(connectStr))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BoardingPoint, TravelDate from BusInformation where Amount > 450", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView1.DataSource = datareader;
                GridView1.DataBind();
            }
        }

        public void Bus2(String connectStr)
        {
            using (SqlConnection conn = new SqlConnection(connectStr))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BusID, DroppingPoint from BusInformation where TravelDate = '2017-12-10'", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView2.DataSource = datareader;
                GridView2.DataBind();

            }
        }
        public void Bus3(String connectStr)
        {
            using (SqlConnection conn = new SqlConnection(connectStr))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BusID, DroppingPoint, Rating from BusInformation where Rating > 3", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView3.DataSource = datareader;
                GridView3.DataBind();
            }
        }
    }
}
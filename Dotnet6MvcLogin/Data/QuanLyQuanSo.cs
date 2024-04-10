using Microsoft.Data.SqlClient;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.Templates.BlazorIdentity.Pages;
using MvcLogin.Models;
using System.Data;
using System.Drawing;

namespace MvcLogin.Data
{
    public class QuanLyQuanSo
    {
        private SqlConnection _connection;

        public QuanLyQuanSo()
        {
            string connStr = "server=LUCKYBOI;database=login;User ID=LK;Password=1;" +
                "Integrated Security=true;TrustServerCertificate=True;";
            
            _connection = new SqlConnection(connStr);
        }

        public List<QuanSo> GetBaoCaoQuanSo()
        {
            List<QuanSo> listQuanSo = new List<QuanSo>();

            SqlCommand cmd = new SqlCommand("GetBaoCaoQuanSo", _connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            dataAdapter.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {


                listQuanSo.Add(
                    new QuanSo
                    {
                        IdBcqs = Convert.ToInt32(dr["id_bcqs"]),
                        IdDv = dr["id_dv"] != DBNull.Value ? Convert.ToString(dr["id_dv"]) : string.Empty,
                        Ngay = dr["ngay"] != DBNull.Value ? Convert.ToDateTime(dr["ngay"]) : (DateTime?)null,
                        TongQs = dr["tong_qs"] != DBNull.Value ? Convert.ToInt32(dr["tong_qs"]) : (int?)null,
                        QsVang = dr["qs_vang"] != DBNull.Value ? Convert.ToInt32(dr["qs_vang"]) : (int?)null,
                        DaoNgu = dr["dao_ngu"] != DBNull.Value ? Convert.ToInt32(dr["dao_ngu"]) : (int?)null,
                        DiVien = dr["di_vien"] != DBNull.Value ? Convert.ToInt32(dr["di_vien"]) : (int?)null,
                        BenhXa = dr["benh_xa"] != DBNull.Value ? Convert.ToInt32(dr["benh_xa"]) : (int?)null,
                        DiHoc = dr["di_hoc"] != DBNull.Value ? Convert.ToInt32(dr["di_hoc"]) : (int?)null,
                        DiThucTe = dr["di_thuc_te"] != DBNull.Value ? Convert.ToInt32(dr["di_thuc_te"]) : (int?)null,
                        DiThucTap = dr["di_thuc_tap"] != DBNull.Value ? Convert.ToInt32(dr["di_thuc_tap"]) : (int?)null,
                        DiTt = dr["di_tt"] != DBNull.Value ? Convert.ToInt32(dr["di_tt"]) : (int?)null,
                        DiCtac = dr["di_ctac"] != DBNull.Value ? Convert.ToInt32(dr["di_ctac"]) : (int?)null,
                        ThaiSan = dr["thai_san"] != DBNull.Value ? Convert.ToInt32(dr["thai_san"]) : (int?)null,
                        LyDoKhac = dr["ly_do_khac"] != DBNull.Value ? Convert.ToInt32(dr["ly_do_khac"]) : (int?)null,
                        ChuThich = dr["chu_thich"] != DBNull.Value ? Convert.ToString(dr["chu_thich"]) : string.Empty
                    }
                );
            }
            return listQuanSo;

        }

        public QuanSo GetBaoCaoQuanSoById(string IdDv)
        {
            QuanSo listQuanSo = new QuanSo();

            SqlCommand cmd = new SqlCommand("getBaoCaoQuanSoById", _connection); // Sửa tên stored procedure thành "getBaoCaoQuanSoById"
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter param;

            cmd.Parameters.Add(new SqlParameter("@id_dv",IdDv));

            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            dataAdapter.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                listQuanSo = new QuanSo
                {
                    IdBcqs = Convert.ToInt32(dr["id_bcqs"]),
                    IdDv = dr["id_dv"] != DBNull.Value ? Convert.ToString(dr["id_dv"]) : string.Empty,
                    Ngay = dr["ngay"] != DBNull.Value ? Convert.ToDateTime(dr["ngay"]) : (DateTime?)null,
                    TongQs = dr["tong_qs"] != DBNull.Value ? Convert.ToInt32(dr["tong_qs"]) : (int?)null,
                    QsVang = dr["qs_vang"] != DBNull.Value ? Convert.ToInt32(dr["qs_vang"]) : (int?)null,
                    DaoNgu = dr["dao_ngu"] != DBNull.Value ? Convert.ToInt32(dr["dao_ngu"]) : (int?)null,
                    DiVien = dr["di_vien"] != DBNull.Value ? Convert.ToInt32(dr["di_vien"]) : (int?)null,
                    BenhXa = dr["benh_xa"] != DBNull.Value ? Convert.ToInt32(dr["benh_xa"]) : (int?)null,
                    DiHoc = dr["di_hoc"] != DBNull.Value ? Convert.ToInt32(dr["di_hoc"]) : (int?)null,
                    DiThucTe = dr["di_thuc_te"] != DBNull.Value ? Convert.ToInt32(dr["di_thuc_te"]) : (int?)null,
                    DiThucTap = dr["di_thuc_tap"] != DBNull.Value ? Convert.ToInt32(dr["di_thuc_tap"]) : (int?)null,
                    DiTt = dr["di_tt"] != DBNull.Value ? Convert.ToInt32(dr["di_tt"]) : (int?)null,
                    DiCtac = dr["di_ctac"] != DBNull.Value ? Convert.ToInt32(dr["di_ctac"]) : (int?)null,
                    ThaiSan = dr["thai_san"] != DBNull.Value ? Convert.ToInt32(dr["thai_san"]) : (int?)null,
                    LyDoKhac = dr["ly_do_khac"] != DBNull.Value ? Convert.ToInt32(dr["ly_do_khac"]) : (int?)null,
                    ChuThich = dr["chu_thich"] != DBNull.Value ? Convert.ToString(dr["chu_thich"]) : string.Empty

                };
            }
            return listQuanSo;
        }


        public bool AddQuanSo(QuanSo qs)
        {
            SqlCommand cmd = new SqlCommand("AddQuanSo", _connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_dv", qs.IdDv != null ? qs.IdDv : DBNull.Value);
            cmd.Parameters.AddWithValue("@ngay", qs.Ngay != null ? qs.Ngay : DBNull.Value);
            cmd.Parameters.AddWithValue("@tong_qs", qs.TongQs != null ? qs.TongQs : DBNull.Value);
            cmd.Parameters.AddWithValue("@qs_vang", qs.QsVang != null ? qs.QsVang : DBNull.Value);
            cmd.Parameters.AddWithValue("@dao_ngu", qs.DaoNgu != null ? qs.DaoNgu : DBNull.Value);
            cmd.Parameters.AddWithValue("@di_vien", qs.DiVien != null ? qs.DiVien : DBNull.Value);
            cmd.Parameters.AddWithValue("@benh_xa", qs.BenhXa != null ? qs.BenhXa : DBNull.Value);
            cmd.Parameters.AddWithValue("@di_hoc", qs.DiHoc != null ? qs.DiHoc : DBNull.Value);
            cmd.Parameters.AddWithValue("@di_thuc_te", qs.DiThucTe != null ? qs.DiThucTe : DBNull.Value);
            cmd.Parameters.AddWithValue("@di_thuc_tap", qs.DiThucTap != null ? qs.DiThucTap : DBNull.Value);
            cmd.Parameters.AddWithValue("@di_tt", qs.DiTt != null ? qs.DiTt : DBNull.Value);
            cmd.Parameters.AddWithValue("@di_ctac", qs.DiCtac != null ? qs.DiCtac : DBNull.Value);
            cmd.Parameters.AddWithValue("@thai_san", qs.ThaiSan != null ? qs.ThaiSan : DBNull.Value);
            cmd.Parameters.AddWithValue("@ly_do_khac", qs.LyDoKhac != null ? qs.LyDoKhac : DBNull.Value);
            cmd.Parameters.AddWithValue("@chu_thich", qs.ChuThich != null ? qs.ChuThich : DBNull.Value);

            _connection.Open();

            int i = cmd.ExecuteNonQuery();
            _connection.Close();

            if (i >= 1)
            {
                return true;
            }
            else
            { return false; }

        }
    }
}

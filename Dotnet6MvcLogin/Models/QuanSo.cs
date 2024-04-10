using System.ComponentModel.DataAnnotations;

namespace MvcLogin.Models
{
    public class QuanSo
    {
        public int IdBcqs { get; set; }

        public string? IdDv { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Ngay { get; set; }

        public int? TongQs { get; set; }

        public int? QsVang { get; set; }

        public int? DaoNgu { get; set; }

        public int? DiVien { get; set; }

        public int? BenhXa { get; set; }

        public int? DiHoc { get; set; }

        public int? DiThucTe { get; set; }

        public int? DiThucTap { get; set; }

        public int? DiTt { get; set; }

        public int? DiCtac { get; set; }

        public int? ThaiSan { get; set; }

        public int? LyDoKhac { get; set; }

        public string? ChuThich { get; set; }

        //public virtual DonVi? IdDvNavigation { get; set; }
    }
}

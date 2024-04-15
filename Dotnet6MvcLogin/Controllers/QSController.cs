using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using MvcLogin.Data;
using MvcLogin.Models;
using System.Collections.Generic;

namespace MvcLogin.Controllers
{
    public class QSController : Controller
    {

        

        public IActionResult Index(DateTime? ngay)
        {
            List<QuanSo> quanSos = new List<QuanSo>();

            try
            {
                QuanLyQuanSo quanLyQuanSo = new QuanLyQuanSo(); // Tạo mới một đối tượng QuanLyQuanSo

                if (ngay.HasValue)
                {
                    quanSos = quanLyQuanSo.SearchQuanSo(ngay.Value);
                }
                else
                {
                    quanSos = quanLyQuanSo.GetBaoCaoQuanSo();
                }
            }
            catch
            {
                // Xử lý nếu có lỗi xảy ra khi tạo đối tượng QuanLyQuanSo hoặc khi gọi phương thức SearchQuanSoByDate hoặc GetBaoCaoQuanSo
            }

            return View(quanSos);
        }


        public ActionResult AddQuanSo()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddNewQuanSo(QuanSo qs)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    QuanLyQuanSo _DbQs = new QuanLyQuanSo();
                    if (_DbQs.AddQuanSo(qs))
                    {
                        return RedirectToAction("AddQuanSo");
                    }
                }

                return View();
            }
            catch
            {
                return View();
            }
        }

        // Action method để xử lý tìm kiếm
        [HttpPost]
        public IActionResult Search(DateTime ngay)
        {
            return RedirectToAction("Index", new { ngay });
        }
    }
}

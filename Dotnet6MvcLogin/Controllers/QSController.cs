using Microsoft.AspNetCore.Mvc;
using MvcLogin.Data;
using MvcLogin.Models;

namespace MvcLogin.Controllers
{
    public class QSController : Controller
    {
        public IActionResult Index()
        {
            List<QuanSo> quanSos = new List<QuanSo>();

            QuanLyQuanSo quanLyQuanSo = new QuanLyQuanSo();

            quanSos = quanLyQuanSo.GetBaoCaoQuanSo();
            return View(quanSos);
        }

        public ActionResult AddQuanSo()
        {
            return View();
        }

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

       
    }
}

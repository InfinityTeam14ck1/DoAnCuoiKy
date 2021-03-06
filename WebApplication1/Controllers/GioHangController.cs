﻿using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models.Bus;

namespace WebApplication1.Controllers
{
    [Authorize]
    public class GioHangController : Controller
    {
        // GET: GioHang
        public ActionResult Index()
        {
            string MaTaiKhoan = User.Identity.GetUserId();
            return View(GioHangBus.DanhSach(MaTaiKhoan));
        }
        [HttpPost]
        public ActionResult Them(int MaSanPham)
        {
            GioHangBus.Them(MaSanPham, User.Identity.GetUserId());
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult CapNhat(int SoLuong,int MaSanPham)
        {
            GioHangBus.CapNhat(SoLuong,MaSanPham,User.Identity.GetUserId());
            return RedirectToAction("Index");
        }
    }
}
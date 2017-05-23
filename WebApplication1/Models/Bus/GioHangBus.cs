using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MobileShopConnection;
namespace WebApplication1.Models.Bus
{
    public class GioHangBus
    {
        public static IEnumerable<MobileShopConnection.v_GioHang> DanhSach(string MaTaiKhoan)
        {
            using (var db = new MobileShopConnectionDB())
            {
                return db.Query<v_GioHang>("select * from v_GioHang where MaTaiKhoan=@0", MaTaiKhoan);
            }
        }
        public static void Them(int MaSanPham,string MaTaiKhoan)
        {
            using(var db =new MobileShopConnectionDB())
            {
                GioHang gh = new GioHang()
                {
                    MaSanPham = MaSanPham,
                    MaTaiKhoan = MaTaiKhoan,
                    SoLuong = 1
                };
                db.Insert(gh);
            }
        }

        public static void CapNhat(int SoLuong,int MaSanPham,string MaTaiKhoan)
        {
            using (var db = new MobileShopConnectionDB()) {
                db.Execute("Update GioHang set SoLuong=@0 where MaSanPham=@1 and MaTaiKhoan=@2", SoLuong, MaSanPham,MaTaiKhoan);
            }
        }
    }
}
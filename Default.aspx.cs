using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRMThemes
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //navbar_hex.Value = "#FFFF00";
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            ExportTheme();
        }

        private void ExportTheme()
        {
            //    var datas = Request.Form;

            string themename = Request.Form["themename"];
            string logotooltip = Request.Form["logotooltip"];

            if (themename == "--") { themename = "My Theme Name"; }
            if (logotooltip == "--" || logotooltip == "") { logotooltip = "Microsoft Dynamics CRM"; }

            string navbar_hex = Request.Form["navbar_hex"];
            string navbarshelf_hex = Request.Form["navbarshelf_hex"];
            string navheader_hex = Request.Form["navheader_hex"];
            string uigloballink_hex = Request.Form["uigloballink_hex"];
            string uiselectedlink_hex = Request.Form["uiselectedlink_hex"];
            string uihoverlink_hex = Request.Form["uihoverlink_hex"];
            string uiprocesscontrol_hex = Request.Form["uiprocesscontrol_hex"];
            string uidefaultentity_hex = Request.Form["uidefaultentity_hex"];
            string uicustomentity_hex = Request.Form["uicustomentity_hex"];
            string uicontrolshade_hex = Request.Form["uicontrolshade_hex"];
            string uicontrolborder_hex = Request.Form["uicontrolborder_hex"];

            //Random rnd = new Random();
            string appDataPath = Server.MapPath("~/App_Data/");
            string xlxsTemplate = "Theme.xlsx";
            //string xlsxTemp = String.Format("Theme-{0}-{1}.xlsx", DateTime.Now.ToString("yyyyMMdd_hhmmss"), rnd.Next(1000000));

            string xlsxTemplatePath = Path.Combine(appDataPath, xlxsTemplate);
            //string xlsxTempPath = Path.Combine(appDataPath, xlsxTemp);
            //File.Copy(xlsxTemplatePath, xlsxTempPath);

            FileStream fileStream = new FileStream(xlsxTemplatePath, FileMode.Open, FileAccess.Read);
            XSSFWorkbook workbook = new XSSFWorkbook(fileStream);
            fileStream.Close();

            ISheet sheet = workbook.GetSheetAt(0);
            IRow row = sheet.GetRow(1);
            ICell cell;

            // fill excel
            cell = row.CreateCell(3);
            cell.SetCellValue(themename);
            cell = row.CreateCell(5);
            cell.SetCellValue(logotooltip);
            cell = row.CreateCell(6);
            cell.SetCellValue(navbar_hex);
            cell = row.CreateCell(7);
            cell.SetCellValue(navbarshelf_hex);
            cell = row.CreateCell(8);
            cell.SetCellValue(navheader_hex);
            cell = row.CreateCell(9);
            cell.SetCellValue(uigloballink_hex);
            cell = row.CreateCell(10);
            cell.SetCellValue(uiselectedlink_hex);
            cell = row.CreateCell(11);
            cell.SetCellValue(uihoverlink_hex);
            cell = row.CreateCell(12);
            cell.SetCellValue(uiprocesscontrol_hex);
            cell = row.CreateCell(13);
            cell.SetCellValue(uidefaultentity_hex);
            cell = row.CreateCell(14);
            cell.SetCellValue(uicustomentity_hex);
            cell = row.CreateCell(15);
            cell.SetCellValue(uicontrolshade_hex);
            cell = row.CreateCell(16);
            cell.SetCellValue(uicontrolborder_hex);


            MemoryStream xlsxMemoryStream = new MemoryStream();
            workbook.Write(xlsxMemoryStream);


            byte[] xlsxContent = xlsxMemoryStream.ToArray();
            themename = themename.Replace(" ", "_");
            string xlsxFileName = MakeValidFileName(themename) + ".xlsx";
            string xlsxContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            PushDownload(xlsxFileName, xlsxContent, xlsxContentType);
        }

        private string MakeValidFileName(string name)
        {
            string invalidChars = Regex.Escape(new string(Path.GetInvalidFileNameChars()));
            string invalidRegStr = string.Format(@"([{0}]*\.+$)|([{0}]+)", invalidChars);
            return Regex.Replace(name, invalidRegStr, "_");
        }


        private void PushDownload(string fileName, byte[] content, string contentType)
        {
            Response.Clear();
            MemoryStream ms = new MemoryStream(content);
            Response.ContentType = contentType;
            Response.AddHeader("content-disposition", String.Format("attachment;filename={0}", fileName));
            Response.Buffer = true;
            ms.WriteTo(Response.OutputStream);
            Response.End();

        }
    }
}
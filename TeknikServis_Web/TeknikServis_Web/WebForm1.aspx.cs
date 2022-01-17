﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeknikServis_Web.Entity;

namespace TeknikServis_Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DbTeknikServisEntities db = new DbTeknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var degerler = db.tblUrunTakip.ToList();
            //Repeater1.DataSource = degerler;
            //Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var degerler = db.tblUrunTakip.Where(x => x.SeriNo == Textbox1.Text);
            Repeater1.DataSource = degerler.ToList();
            Repeater1.DataBind();
        }
    }
}
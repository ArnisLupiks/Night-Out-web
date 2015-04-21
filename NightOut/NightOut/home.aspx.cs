using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NightOut
{
    public partial class home : System.Web.UI.Page
    {
        private EvetnsContainer entities = new EvetnsContainer();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefreshGrid();

                ShowFirstEvent();
            }
        }

        private void ShowFirstEvent()
        {
            Event ev = entities.Events.FirstOrDefault();
            PopulateFrom(ev);
        }

        private void PopulateFrom(Event ev)
        {
            hidId.Value = ev.EventID.ToString();
            txtName.Text = ev.Name;
            txtDescrition.Text = ev.Description;
            txtTimeDate.Text = ev.TimeDate;
            txtPrice.Text = ev.Price;
            txtOpeningHours.Text = ev.OpeningHours;

        }

        private void RefreshGrid()
        {

            gvEvent.DataSource = entities.Events.ToList();
            gvEvent.DataBind();
        }

        protected void btnAddClick(object sender, EventArgs e)
        {
            Event ev = new Event();
            ev.Name = txtName.Text;
            ev.Description = txtDescrition.Text;
            ev.TimeDate = txtTimeDate.Text;
            ev.Price = txtPrice.Text;
            ev.OpeningHours = txtOpeningHours.Text;

            entities.Events.Add(ev);
            entities.SaveChanges();
            RefreshGrid();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int currentId = Convert.ToInt32(hidId.Value);
            Event ev = entities.Events.FirstOrDefault(b => b.EventID > currentId);

            if (ev != null)
            {
                PopulateFrom(ev);
            }
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            int currentId = Convert.ToInt32(hidId.Value);
            Event ev = entities.Events.ToList().LastOrDefault(b => b.EventID < currentId);

            if (ev != null)
            {
                PopulateFrom(ev);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace NightOut
{
    /// <summary>
    /// Summary description for EventServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class EventServices : System.Web.Services.WebService
    {
        private EvetnsContainer entities = new EvetnsContainer();

        [WebMethod]
        public string[] GetEventByTitle(string titlePart)
        {
            List<string> Event = new List<string>();
            foreach (var ev in entities.Events.Where(b => b.Name.Contains(titlePart)).ToList() )
    {
        Event.Add(ev.Name);
    }
    return Event.ToArray();
}
    }
}

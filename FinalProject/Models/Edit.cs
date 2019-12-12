using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Edit
{
    public string detail_id { get; set; }
    public string user_id { get; set; }
    public string type { get; set; }
    public string start_date { get; set; }
    public string end_date { get; set; }
    public string start_time { get; set; }
    public string end_time { get; set; }
    public string origin { get; set; }
    public string destination { get; set; }
    public string stay { get; set; }
    public string vehicle { get; set; }
    public string distance { get; set; }
    public string fare { get; set; }
    public string hours { get; set; }
    public string DA_rate { get; set; }
    public string DA { get; set; }
    public string DA_percent { get; set; }
    public string total { get; set; }

    public string detaildisplay()
    {
        string display = string.Format("Details for ID {0} with Type {1}",detail_id,type);
        return display;
    }
}

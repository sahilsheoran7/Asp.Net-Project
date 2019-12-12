using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace FinalProject
{
    public class Logger
    {
        static EventLog log;

        static Logger()
        {
            log = new EventLog("Application", Environment.MachineName, "Image Grid");
        }

        /// <summary>
        /// Logs the message into Windows Event Log.
        /// </summary>
        /// <param name="message">Error Message</param>
        public static void Log(string message)
        {
            log.WriteEntry(message, EventLogEntryType.Warning, 21001);
        }
    }
}

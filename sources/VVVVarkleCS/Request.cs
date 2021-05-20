using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace VVVVarkleCS
{
    public class Request
    {
        public Player Player { get; set; }
        public DateTime DateTime { get; set; }
        public bool Shake { get; set; }
        public IEnumerable<int> Selection { get; set; }
        public bool EndRound { get; set; }

        //Constructor
        [JsonConstructor]
        public Request(Player player, DateTime datetime, bool shake, IEnumerable<int> selection, bool endRound)
        {
            Player = player;
            DateTime = datetime;
            Shake = shake;
            Selection = selection;
            EndRound = endRound;
        }
    }
}

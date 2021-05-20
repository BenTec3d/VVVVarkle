using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace VVVVarkleCS
{
    public class Player
    {
        //Properties
        public string Name { get; set; }
        public string Identifier { get; private set; }
        public int Score { get; set; }
        public int Won { get; set; }

        //Constructor
        public Player(string name)
        {
            Name = name;
            Score = 0;
            Won = 0;
            Identifier = Name + "." + DateTime.Now.ToString("hh.mm.ss.ffffff");
        }

        [JsonConstructor]
        public Player(string name, string identifier, int score, int won)
        {
            Name = name;
            Identifier = identifier;
            Score = score;
            Won = won;
        }

        public override bool Equals(object obj)
        {
            return obj is Player player &&
                   Identifier == player.Identifier;
        }

        public override int GetHashCode()
        {
            int hashCode = -1319532576;
            hashCode = hashCode * -1521134295 + EqualityComparer<string>.Default.GetHashCode(Name);
            hashCode = hashCode * -1521134295 + EqualityComparer<string>.Default.GetHashCode(Identifier);
            hashCode = hashCode * -1521134295 + Score.GetHashCode();
            hashCode = hashCode * -1521134295 + Won.GetHashCode();
            return hashCode;
        }
    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using Newtonsoft.Json;

namespace VVVVarkleCS
{
    public static class NewtonsonJson
    {
        public static string Serialize(Game game)
        {
            return JsonConvert.SerializeObject(game);
        }

        public static string Serialize(Request request)
        {
            return JsonConvert.SerializeObject(request);
        }

        public static string Serialize(Player player)
        {
            return JsonConvert.SerializeObject(player);
        }

        public static Game DeserializeGame(String s)
        {
            return JsonConvert.DeserializeObject<Game>(s);
        }

        public static Request DeserializeRequest(String s)
        {
            return JsonConvert.DeserializeObject<Request>(s);
        }

        public static Player DeserializePlayer(String s)
        {
            return JsonConvert.DeserializeObject<Player>(s);
        }

    }
}

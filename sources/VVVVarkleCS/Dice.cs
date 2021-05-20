using System;
using Newtonsoft.Json;
using Stride.Core.Mathematics;

namespace VVVVarkleCS
{
    public class Dice
    {
        //Properties
        public readonly int Value;
        public readonly Vector3 Position;
        public readonly Vector3 Rotation;
        public bool Selected { get; set;}

        //Constructors used by an ActiveDiceSet
        public Dice(int value, Vector3 position, Vector3 rotation)
        {
            Value = value;
            Position = position;
            Rotation = rotation;
            Selected = false;
        }

        //Constructor for Deserialization
        [JsonConstructor]
        public Dice(Vector3 position, Vector3 rotation, int value, bool selected)
        {
            Position = position;
            Rotation = rotation;
            Value = value;
            Selected = selected;
        }
    }
}

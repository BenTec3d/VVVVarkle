using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using Stride.Core.Mathematics;

namespace VVVVarkleCS
{
    public class DiceSet
    {
        //Properties
        public List<Dice> DiceList { get; private set; }
        public readonly Vector4 Area;
        public int Points { get; private set; }

        //Constructor for an ActiveDiceSet
        public DiceSet(int diceCount, Vector4 area, Random random)
        {
            DiceList = new List<Dice>();
            Area = area;
            Points = 0;

            //Adds the specified number of Dice to the DiceList
            for (int i = 0; i < diceCount; i++)
            {
                AddDice(random);
            }
        }

        //Constructor for a PassiveDiceSet
        public DiceSet(List<int> values, int points, Random random)
        {
            Points = points;
            DiceList = new List<Dice>();

            //Adds the specified number of Dice to the DiceList
            for (int i = 0; i < values.Count; i++)
            {
                AddDice(values[i], random);
            }
        }

        //Constructor for Deserialization
        [JsonConstructor]
        public DiceSet(List<Dice> diceList, Vector4 area, int points)
        {
            DiceList = diceList;
            Area = area;
            Points = points;
        }

        //Adds a Dice to the DiceList (used if DiceSet is an ActiveDiceSet)
        public void AddDice(Random random)
        {
            int value = RandValue(random);
            Vector3 position = FindValidPosition(random);
            Vector3 rotation = RandRotation(value, random);

            //Creates the Dice
            Dice dice = new Dice(value, position, rotation);

            //Adds the Dice to the DiceList
            DiceList.Add(dice);
        }

        //Adds a Dice to the DiceList (used if DiceSet is a PassiveDiceSet)
        public void AddDice(int value, Random random)
        {
            Vector3 position = new Vector3(0, 0, 0);
            Vector3 rotation = RandRotation(value, -0.05, 0.05, random);

            //Creates the Dice
            Dice dice = new Dice(value, position, rotation);

            //Adds the Dice to the DiceList
            DiceList.Add(dice);
        }

        //Gives a random int between 1 and 6 (including)
        private int RandValue(Random random)
        {
            return random.Next(1, 7);
        }

        //Returns a random position inside this DiceSets area
        private Vector3 RandPositon(Random random)
        {
            float x = (float)random.NextDouble() * (Area.X - Area.Y) + Area.Y;
            float y = 0;
            float z = (float)random.NextDouble() * (Area.Z - Area.W) + Area.W;
            return new Vector3(x, y, z);
        }

        //Returns a random rotation for the specified face value
        private Vector3 RandRotation(int value, Random random)
        {
            Vector3 rotation = new Vector3(0,0,0);

            switch (value)
            {
                case 1:
                    rotation.X = 0;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0;
                    break;
                case 2:
                    rotation.X = 0.25f;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0;
                    break;
                case 3:
                    rotation.X = 0;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0.25f;
                    break;
                case 4:
                    rotation.X = 0;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0.75f;
                    break;
                case 5:
                    rotation.X = 0.75f;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0;
                    break;
                case 6:
                    rotation.X = 0.5f;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0;
                    break;
                default:
                    rotation.X = 0;
                    rotation.Y = (float)random.NextDouble();
                    rotation.Z = 0;
                    break;            
            }

            return rotation;
        }

        //Returns a random rotation for the specified face value withing the min and max values
        private Vector3 RandRotation(int value, double min, double max, Random random)
        {
            Vector3 rotation = new Vector3(0, 0, 0);

            switch (value)
            {
                case 1:
                    rotation.X = 0;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0,4) * 0.25));
                    rotation.Z = 0;
                    break;
                case 2:
                    rotation.X = 0.25f;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0, 4) * 0.25));
                    rotation.Z = 0;
                    break;
                case 3:
                    rotation.X = 0;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0, 4) * 0.25));
                    rotation.Z = 0.25f;
                    break;
                case 4:
                    rotation.X = 0;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0, 4) * 0.25));
                    rotation.Z = 0.75f;
                    break;
                case 5:
                    rotation.X = 0.75f;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0, 4) * 0.25));
                    rotation.Z = 0;
                    break;
                case 6:
                    rotation.X = 0.5f;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0, 4) * 0.25));
                    rotation.Z = 0;
                    break;
                default:
                    rotation.X = 0;
                    rotation.Y = (float)((random.NextDouble() * (max - min) + min) + (random.Next(0, 4) * 0.25));
                    rotation.Z = 0;
                    break;
            }

            return rotation;
        }

        //Returns a position that does not collide with any other Dice in the Dice list
        private Vector3 FindValidPosition(Random random)
        {
            Vector3 position;

            //Loops until a Dice position that does not collide with any existing Dice has been found
            while (true)
            {
                position = RandPositon(random);

                bool collision = false;

                //Loops through all exisiting Dice in the DiceList
                foreach (Dice d in DiceList)
                {
                    //Creates BoundingSpheres for the new Dice and the current Dice from the foreach loop
                    BoundingSphere s1 = new BoundingSphere(d.Position, 0.866f);
                    BoundingSphere s2 = new BoundingSphere(position, 0.866f);

                    //Checks for collision between the BoundingSpheres and if so sets the collision bool to true
                    if (s1.Intersects(ref s2))
                    {
                        collision = true;
                    }
                }

                //If the new Dice does not collide with any existing Dice it adds it to the DiceList and breaks out of the while loop
                if (collision == false)
                {
                    break;
                }
            }

            //Returns dice with valid Positon and Roation
            return position;
        }

    }
}

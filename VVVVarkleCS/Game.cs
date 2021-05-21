using System;
using System.Collections.Generic;
using System.Linq;
using Stride.Core.Mathematics;
using Newtonsoft.Json;

namespace VVVVarkleCS
{
    public class Game
    {
        //Properties
        public readonly int DiceCount;
        public DiceSet ActiveDiceSet { get; private set; }
        public Vector4 AreaActiveDiceSet { get; private set; }
        public List<DiceSet> PassiveDiceSets { get; private set; }
        public IEnumerable<Player> Players { get; private set; }
        public Player CurrentPlayer { get; private set; }
        public int CurrentScore { get; private set; }
        public int RoundsPlayed { get; private set; }
        public int NumberOfChanges { get; private set; }
        public bool AllowedToShake { get; private set; }
        public bool InvalidSelection { get; private set; }
        public bool Varkled { get; private set; }
        public Random Random { get; private set; }
        public bool GameWon { get; private set; }
        public int WinningCondition { get; private set; }

        //Constructor
        public Game(int diceCount, Vector4 areaActiveDiceSet, int winningCondition, IEnumerable<Player> players)
        {
            Random = new Random();
            DiceCount = diceCount;
            AreaActiveDiceSet = areaActiveDiceSet;
            ResetDiceSets();
            Players = players;
            Players.OrderBy(a => Random.Next()).ToList();
            foreach (Player p in Players)
            {
                p.Score = 0;
            }
            CurrentPlayer = Players.ElementAt(0);
            CurrentScore = 0;
            RoundsPlayed = 0;
            NumberOfChanges = 0;
            AllowedToShake = false;
            InvalidSelection = false;
            Varkled = false;
            GameWon = false;
            WinningCondition = winningCondition;
        }

        //Constructor for Deserialization
        [JsonConstructor]
        public Game(int diceCount, DiceSet activeDiceSet, Vector4 areaActiveDiceSet, List<DiceSet> passiveDiceSets, IEnumerable<Player> players, Player currentPlayer,
            int currentScore, int roundsPlayed, int numberOfChanges, bool allowedToShake, bool invalidSelection, bool varkled, Random random, bool gameWon, int winningCondition)
        {
            DiceCount = diceCount;
            ActiveDiceSet = activeDiceSet;
            AreaActiveDiceSet = areaActiveDiceSet;
            PassiveDiceSets = passiveDiceSets;
            Players = players;
            CurrentPlayer = currentPlayer;
            CurrentScore = currentScore;
            RoundsPlayed = roundsPlayed;
            NumberOfChanges = numberOfChanges;
            AllowedToShake = allowedToShake;
            InvalidSelection = invalidSelection;
            Varkled = varkled;
            Random = random;
            GameWon = gameWon;
            WinningCondition = winningCondition;
        }

        //Receives request and checks if the player who sent it is the CurrentPlayer
        public void ReceiveRequest(Request request)
        {
            if (CurrentPlayer.Equals(request.Player))
            {
                ProcessRequest(request);
            }
        }

        //Calls the method according to the request
        private void ProcessRequest(Request request)
        {
            if (request.Shake)
            {
                if (AllowedToShake)
                {
                    InvalidSelection = false;
                    ShakeDice();
                }
            }
            else if (request.EndRound)
            {
                EndRound();
            }
            else if (request.Selection.Count() != 0)
            {
                MoveSelectionToPassive(request);
            }
        }

        //Shakes all dice in the ActiveDiceSet
        private void ShakeDice()
        {
            if (ActiveDiceSet.DiceList.Count() > 0)
            {
                DiceSet newSet = new DiceSet(ActiveDiceSet.DiceList.Count(), AreaActiveDiceSet, Random);
                ActiveDiceSet = newSet;
            }
            else
            {
                ResetDiceSets();
            }

            AllowedToShake = false;

            if (CheckForVarkled())
            {
                Varkled = true;
                CurrentScore = 0;
                PassiveDiceSets.Clear();
            }

            NumberOfChanges++;
        }

        //Prepares the selection and calls the ProcessSelection method
        private void MoveSelectionToPassive(Request request)
        {
            InvalidSelection = false;
            List<int> values = new List<int>();
            List<int> indexes = new List<int>();

            foreach (int index in request.Selection)
            {
                values.Add(ActiveDiceSet.DiceList[index].Value);
                indexes.Add(index);
            }

            values.Sort();

            Dictionary<List<int>, int> combinations = CalculatePointsForSelection(values);

            if (!InvalidSelection)
            {
                //Sorts the indexes in DESC order
                indexes.Sort((a, b) => b.CompareTo(a));

                //Removes the Dice with the corrosponding indexes from the ActiveDiceSet
                foreach (int index in indexes)
                {
                    ActiveDiceSet.DiceList.RemoveAt(index);
                }

                //Creates a new DiceSet for each combination of values and points, then adds them to the PassiveDiceSets
                //Adds the scores of each combination to the CurrentScore
                foreach (KeyValuePair<List<int>, int> entry in combinations)
                {
                    PassiveDiceSets.Add(new DiceSet(entry.Key, entry.Value, Random));
                    CurrentScore += entry.Value;
                }

                AllowedToShake = true;
            }

            NumberOfChanges++;
        }

        //Calculates the points for the selection and creates the PassiveDiceSets
        private Dictionary<List<int>, int> CalculatePointsForSelection(List<int> values)
        {
            Dictionary<List<int>, int> combinations = new Dictionary<List<int>, int>();
            List<int> countOfEachValue = new List<int> { 0, 0, 0, 0, 0, 0 };

            int pairs = 0;
            int triplets = 0;
            int quadruples = 0;
            int quintuples = 0;
            int sextuples = 0;


            //Counts how often each number occurs
            foreach (int i in values)
            {
                switch (i)
                {
                    case 1:
                        countOfEachValue[0]++;
                        break;

                    case 2:
                        countOfEachValue[1]++;
                        break;

                    case 3:
                        countOfEachValue[2]++;
                        break;

                    case 4:
                        countOfEachValue[3]++;
                        break;

                    case 5:
                        countOfEachValue[4]++;
                        break;

                    case 6:
                        countOfEachValue[5]++;
                        break;
                }
            }

            foreach (int i in countOfEachValue)
            {
                if (i == 2)
                {
                    pairs++;
                }
                else if (i == 3)
                {
                    triplets++;
                }
                else if (i == 4)
                {
                    quadruples++;
                }
                else if (i == 5)
                {
                    quintuples++;
                }
                else if (i == 6)
                {
                    sextuples++;
                }
            }

            //1-6 straight
            if (countOfEachValue[0] == 1 && countOfEachValue[1] == 1 && countOfEachValue[2] == 1 && countOfEachValue[3] == 1 && countOfEachValue[4] == 1 && countOfEachValue[5] == 1)
            {
                combinations.Add(new List<int>(values), 1500);
                values.Clear();
            }

            //Three pairs
            else if (pairs == 3)
            {
                combinations.Add(new List<int>(values), 1500);
                values.Clear();
            }

            //Four of any number with a pairs
            else if (quadruples == 1 && pairs == 1)
            {
                combinations.Add(new List<int>(values), 1500);
                values.Clear();
            }

            //Two triplets
            else if (triplets == 2)
            {
                combinations.Add(new List<int>(values), 2500);
                values.Clear();
            }

            else
            {
                //Checks if any number i occurs more than:
                for (int i = 6; i > 0; i--)
                {
                    //Six times
                    if (countOfEachValue[i - 1] == 6)
                    {
                        List<int> list = new List<int>();
                        for (int i2 = 0; i2 < 6; i2++)
                        {
                            list.Add(i);
                            values.Remove(i);
                            countOfEachValue[i - 1]--;
                        }
                        combinations.Add(new List<int>(list), 3000);
                    }

                    //Five times
                    if (countOfEachValue[i - 1] == 5)
                    {
                        List<int> list = new List<int>();
                        for (int i2 = 0; i2 < 5; i2++)
                        {
                            list.Add(i);
                            values.Remove(i);
                            countOfEachValue[i - 1]--;
                        }
                        combinations.Add(new List<int>(list), 2000);
                    }

                    //Four times
                    if (countOfEachValue[i - 1] == 4)
                    {
                        List<int> list = new List<int>();
                        for (int i2 = 0; i2 < 4; i2++)
                        {
                            list.Add(i);
                            values.Remove(i);
                            countOfEachValue[i - 1]--;
                        }
                        combinations.Add(new List<int>(list), 1000);
                    }

                    //Three times
                    if (countOfEachValue[i - 1] == 3)
                    {
                        int points = 0;
                        switch (i)
                        {
                            case 1:
                                points = 300;
                                break;
                            case 2:
                                points = 200;
                                break;
                            case 3:
                                points = 300;
                                break;
                            case 4:
                                points = 400;
                                break;
                            case 5:
                                points = 500;
                                break;
                            case 6:
                                points = 600;
                                break;
                        }

                        List<int> list = new List<int>();
                        for (int i2 = 0; i2 < 3; i2++)
                        {
                            list.Add(i);
                            values.Remove(i);
                            countOfEachValue[i - 1]--;
                        }
                        combinations.Add(new List<int>(list), points);
                    }
                }

                //Removes remaining ones
                while (countOfEachValue[0] > 0)
                {
                    List<int> list = new List<int> { 1 };
                    combinations.Add(new List<int>(list), 100);
                    countOfEachValue[0]--;
                    values.Remove(1);
                }

                //Removes remaining fives
                while (countOfEachValue[4] > 0)
                {
                    List<int> list = new List<int> { 5 };
                    combinations.Add(new List<int>(list), 50);
                    countOfEachValue[4]--;
                    values.Remove(5);
                }
            }

            if (values.Count != 0)
            {
                InvalidSelection = true;
                CurrentScore = 0;
            }

            return combinations;
        }

        //Checks for Varkled (No way to score after shaking the Dice) 
        private bool CheckForVarkled()
        {
            bool noLuck = true;

            List<int> values = new List<int>();
            List<int> countOfEachValue = new List<int> { 0, 0, 0, 0, 0, 0 };

            foreach (Dice d in ActiveDiceSet.DiceList)
            {
                values.Add(d.Value);
            }

            int pairs = 0;
            int triplets = 0;
            int quadruples = 0;
            int quintuples = 0;
            int sextuples = 0;


            //Counts how often each number occurs
            foreach (int i in values)
            {
                switch (i)
                {
                    case 1:
                        countOfEachValue[0]++;
                        break;

                    case 2:
                        countOfEachValue[1]++;
                        break;

                    case 3:
                        countOfEachValue[2]++;
                        break;

                    case 4:
                        countOfEachValue[3]++;
                        break;

                    case 5:
                        countOfEachValue[4]++;
                        break;

                    case 6:
                        countOfEachValue[5]++;
                        break;
                }
            }

            foreach (int i in countOfEachValue)
            {
                if (i == 2)
                {
                    pairs++;
                }
                else if (i == 3)
                {
                    triplets++;
                }
                else if (i == 4)
                {
                    quadruples++;
                }
                else if (i == 5)
                {
                    quintuples++;
                }
                else if (i == 6)
                {
                    sextuples++;
                }
            }

            //1-6 straight
            if (countOfEachValue[0] == 1 && countOfEachValue[1] == 1 && countOfEachValue[2] == 1 && countOfEachValue[3] == 1 && countOfEachValue[4] == 1 && countOfEachValue[5] == 1)
            {
                noLuck = false;
            }

            //Three pairs
            else if (pairs == 3)
            {
                noLuck = false;
            }

            //Four of any number with a pairs
            else if (quadruples == 1 && pairs == 1)
            {
                noLuck = false;
            }

            //Two triplets
            else if (triplets == 2)
            {
                noLuck = false;
            }

            else
            {
                //Checks if any number (i + 1) occurs more than:
                for (int i = 6; i > 0; i--)
                {
                    //Six times
                    if (countOfEachValue[i - 1] == 6)
                    {
                        noLuck = false;
                    }

                    //Five times
                    if (countOfEachValue[i - 1] == 5)
                    {
                        noLuck = false;
                    }

                    //Four times
                    if (countOfEachValue[i - 1] == 4)
                    {
                        noLuck = false;
                    }

                    //Three times
                    if (countOfEachValue[i - 1] == 3)
                    {
                        noLuck = false;
                    }
                }

                //Contains ones
                if (countOfEachValue[0] > 0)
                {
                    noLuck = false;
                }

                //Contains fives
                if (countOfEachValue[4] > 0)
                {
                    noLuck = false;
                }
            }
            return noLuck;
        }

        //Ends the current Round
        private void EndRound()
        {

            CurrentPlayer.Score += CurrentScore;

            if (!CheckIfWon())
            {
                CurrentScore = 0;
                RoundsPlayed++;
                ResetDiceSets();
                AllowedToShake = false;
                InvalidSelection = false;
                Varkled = false;
                CurrentPlayer = Players.ElementAt(RoundsPlayed % Players.Count());
            }

            NumberOfChanges++;
        }

        //Checks if the CurrentPlayer reached  winning condition
        private bool CheckIfWon()
        {
            if (CurrentPlayer.Score >= WinningCondition)
            {
                GameWon = true;
                CurrentPlayer.Won++;
                return true;
            }
            else return false;
        }

        //Resets both ActiveDiceSet and PassiveDiceSets
        private void ResetDiceSets()
        {
            ActiveDiceSet = new DiceSet(DiceCount, AreaActiveDiceSet, Random);
            PassiveDiceSets = new List<DiceSet>();
        }
    }
}
using System.Collections.Generic;
using System.Linq;

namespace PE.CSharp
{
    public class Problem0003
    {
        private int _factorBy;
        private int _currentNumberToFactor;
        private HashSet<int> _listOfPrimeFactors; 
        
        public int GreatestPrimeFactor(int numberToFactor)
        {
            return PrimeFactors(numberToFactor).Max();
        }

        public IEnumerable<int> PrimeFactors(int numberToFactor)
        {
            _factorBy = 2;
            _currentNumberToFactor = numberToFactor;
            _listOfPrimeFactors = new HashSet<int>();

            while (IsFactorByLessThanTheNumberToFactor())
            {
                DetermineIfAFactorAndIncrement();
            }

            return _listOfPrimeFactors;
        }

        private bool IsFactorByLessThanTheNumberToFactor()
        {
            return _factorBy <= _currentNumberToFactor;
        }

        private void DetermineIfAFactorAndIncrement()
        {
            if (IsAFactorOf())
            {
                _listOfPrimeFactors.Add(_factorBy);
                _currentNumberToFactor = _currentNumberToFactor/_factorBy;
            }
            else
            {
                _factorBy++;
            }
        }

        private bool IsAFactorOf()
        {
            return _currentNumberToFactor % _factorBy == 0;
        }
    }
}

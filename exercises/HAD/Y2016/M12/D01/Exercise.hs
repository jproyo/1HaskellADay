module Y2016.M12.D01.Exercise where 

import Data.Time
import Network.HTTP.Conduit

-- below import available from 1HaskellADay git repository

import Data.Monetary.BitCoin

{--
Okay, 7 or 8 data points, one thing.

How about a year's worth of data? And instead of monotonically increasing,
let's take a data set that goes anywhere, say, stocks in the markets or bitcoin.

Everything should work as before, right? But does it? Is there an 'average
gain'? And does the curve fit well in the new data set as it so happened to do
in the old data set?

Let's see.

We have a set of quotes for BitCoin closing prices by making the following REST
call:

https://api.blockchain.info/charts/market-price?timespan=52weeks&rollingAverage=24hours&format=csv

make that call, get the CSV back, and parse that into a set of BTC prices:
--}

btcPriceHistoryFromURL :: FilePath -> IO BitCoinPrices
btcPriceHistoryFromURL url = undefined

{-- BONUS -----------------------------------------------------------------
Okay, now that you have these data, plot the BitCoin price over time.

Question: is there a mean gain over the year? Answer: yes.

Question: does a mean gain curve make sense with the fluxuations in BTC prices?

Let's see.
--}

chartBTC :: FilePath -> BitCoinPrices -> IO ()
chartBTC outputWithMeanGain btcprices = undefined

-- we'll look at other curve fitting algorithms, but not today.

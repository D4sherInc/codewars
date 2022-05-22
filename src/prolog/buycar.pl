% task:
% https://www.codewars.com/kata/554a44516729e4d80b000012/train/prolog
nb_months(StartPriceOld, StartPriceNew, SavingperMonth, PercentLossByMonth, L) :-
  nb_months2(StartPriceOld, StartPriceNew, SavingperMonth, PercentLossByMonth, 0, 0, L).
  

nb_months1(StartPriceOld, StartPriceNew, _SavingperMonth, _PercentLossByMonth, Time, TotalSavings, [Time, Result|[]]) :-
	TotalSavings + StartPriceOld >= StartPriceNew,
	!,
	Result is round(TotalSavings + StartPriceOld - StartPriceNew).

nb_months1(StartPriceOld, StartPriceNew, SavingperMonth, PercentLossByMonth, Time, TotalSavings, L) :-
	NewStartPriceOld is StartPriceOld * ((100 - PercentLossByMonth) / 100),
	NewStartPriceNew is StartPriceNew * ((100 - PercentLossByMonth) / 100),
	succ(Time, NewTime),
	Temp is TotalSavings + SavingperMonth,
	NewTotalSavings is round(Temp),
	
	nb_months2(	NewStartPriceOld, 
				NewStartPriceNew,
				SavingperMonth,
				PercentLossByMonth,
				NewTime,
				NewTotalSavings,
				L).


nb_months2(StartPriceOld, StartPriceNew, _SavingperMonth, _PercentLossByMonth, Time, TotalSavings, [Time, Result|[]]) :-
	TotalSavings + StartPriceOld >= StartPriceNew,
	!,
	Result is round(TotalSavings + StartPriceOld - StartPriceNew).

nb_months2(StartPriceOld, StartPriceNew, SavingperMonth, PercentLossByMonth, Time, TotalSavings, L) :-
	NewStartPriceOld is StartPriceOld * ((100 - PercentLossByMonth) / 100),
	NewStartPriceNew is StartPriceNew * ((100 - PercentLossByMonth) / 100),
	succ(Time, NewTime),
	Temp is TotalSavings + SavingperMonth,
	NewTotalSavings is round(Temp),
	NewPercentLossByMonth is PercentLossByMonth + 0.5,
	
	nb_months1(	NewStartPriceOld, 
				NewStartPriceNew,
				SavingperMonth,
				NewPercentLossByMonth,
				NewTime,
				NewTotalSavings,
				L).
class Main inherits A2I {

	i: IO <- new IO;
	main(): Object {
		i.out_string("Computing Factorials\n");
		x:Int <- a2i(i.in_string());
		i.out_string(i2a(fact_rec(x)).concat("\n"));
		i.out_string(i2a(fact_iter(x)).concat("\n"));
	};

	fact_rec(i: Int): Int  {
		if ( i = 0) then 1 else i*fact(i-1) fi
	};

	fact_iter(i: Int): Int {
		let fact: Int <- 1 in {
			while  (not (i = 0)) loop
			{
				fact <- fact * i;
				i <- i - 1;
			}
			pool;
			fact;
		}
	};
};

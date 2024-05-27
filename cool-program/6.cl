class List {
	item: String;
	next: List;
	
	init(i: String, n: List): List {
		{
			item <- i;
			next <- n;
			self;
		}
	};

	flattern(): String {
		if (isvoid next) then 
		 	item
		else
			item.concat(next.flattern())
		fi
	};
};


class GeneralList inherits A2I {
	item: Object;
	next: GeneralList;
	
	init(i: Object, n: GeneralList): GeneralList {
		{
			item <- i;
			next <- n;
			self
		
		}
	};

	flattern(): {
		let string: String <- 
			case item of 
				i: Int => i2a(i);
				s: String => s;
				o: Object => { abort(); ""; };
			esac
		in 
			if (isvoid next) then
				string
			else
				string.concat(next.flattern()
			fi

	};
};

class Main inherits IO {

	main(): Object {
		let hello: String <-  "Hello ",
		    world: String <-  "World!",
		    i: Int <- 42,
		    newline: String <- "\n",
		    nil: List,
	            list: List <- (new List).init(hello,(new List).init(world, (new List).init(newline, nil)))
	            generallist: GeneralList  <- (new GeneralList).init(hello, (new GeneralList).init(world, (new GeneralList).init(i, (new GeneralList).init(newline, ni))))
		 in 
		   { 
		     out_string(hello.concat(world.concat(newline)));
	             out_string(list.flattern());

		     out_string(generallist.flattern());
		   }
		
		

	};
};

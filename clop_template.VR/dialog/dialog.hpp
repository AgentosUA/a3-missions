////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by [WFA]Agentos, v1.063, #Sylygu)
////////////////////////////////////////////////////////

class dialog_1
{
	idd = 5555;	

	class controls {
		class RscButtonMenuOK_2600: RscButton
		{
			x = 0.846483;
			y = 0.8;
			w = 0.1;
			h = 0.08;
			text = "Close";
			action = "closeDialog 5555";
		};
		class RscButtonMenuCancel_2700: RscButton
		{
			x = 0.0551123;
			y = 0.800299;
			w = 0.1125;
			h = 0.08;
			text = "Purchase";
			action = "closeDialog 5555";
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.05;
			y = 0.24;
			w = 0.9;
			h = 0.5;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Total points: 100"; //--- ToDo: Localize;
			x = 0.0573877;
			y = 0.0901498;
			w = 0.175;
			h = 0.08;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Points left: 100"; //--- ToDo: Localize;
			x = 0.772281;
			y = 0.0901498;
			w = 0.175;
			h = 0.08;
		};
	};
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

waitUntil { !isNil {player} };
waitUntil { player == player };


switch (side player) do 
{
 
case WEST: // Briefing United States Army‎
{ 		
        player createDiaryRecord ["diary", ["Условности | Conventions","[1] Зона захватывается при наличии синих меньше трёх, и наличии красных больше трёх. Либо при двухкратном преимуществе захватывающих.
<br/>[2] В <marker name = 'restriction_zone'>области</marker> отмеченной красной линией, возможность возведения траншей отключена.
<br/>
<br/>[1] Zones are captured when there are less than three red and there are more than three blue. Or with a twofold advantage of attackers.
<br/>[2] In the <marker name = 'restriction_zone'>area</marker> marked with a red line, the ability to erect trenches is disabled."]];
	    player createDiaryRecord ["diary", ["Форма сторон | Side Uniform","<font color='#3b85ff'>Армия США / US Army</font><br/>
		<img image='Images\blue.jpg' width='367' height='205'><br/>
		<br/><font color='#ff3333'>Вооружённые силы СССР / Armed forces of the USSR</font><br/>
		<br/><img image='Images\red.jpg' width='367' height='205'><br/>
		<br/><font color='#ff3333'>СПН РФ / SOF RF</font><br/>
		<br/><img image='Images\redspn.jpg' width='367' height='205'>"]];
		player createDiaryRecord ["diary", ["Дополнительная информация", "В грузовике снабжения с боеприпасами находятся:
<br/> - 560 M791 APDS-T (8 лент по 70)
<br/> - 920 M792 HEI-T (4 лент по 230)
<br/> - 8 M136 anti-tank launcher
<br/> - 9 ящиков с миномётными снарядами"]];
		player createDiaryRecord ["diary", ["Текущая ситуация", "Советская армия наступает! Пока основная часть наших войск увязла в боях вдоль границы, вражеская рота мчится к нашей дислокации! Враг движется с юго-запада в составе роты совместно с танковым взводом. Также разведка доложила о возможном присутствии стратегической авиации противника.
<br/>На <marker name = 'zone'>базе</marker> сейчас находятся:
<br/> -  1x M1025A2 HMMWV HQ
<br/> -  3x M923 Transport Truck
<br/> -  1x M113A3 M2 + M252
<br/> -  2x M1035 HMMWV MEV
<br/>На <marker name = 'blufor_start_2'>подъезде к базе</marker>:
<br/> -  4x M2A2 «Bradley»
<br/>На <marker name = 'blufor_start_3'> границе региона</marker>:
<br/> -  2x M1A1 «Abrams»
<br/> -  1x M923 (Ammo)
<br/> -  1x M923 (Fuel)
<br/> -  1x M923 (Repair)"]];
		player createDiaryRecord ["diary", ["Поставленная задача | The task", "Предотвратить захват нашей полевой <marker name = 'zone'>базы</marker>.<br/>
		<br/>Prevent the capture of our field <marker name = 'zone'>base</marker>."]];
};

case EAST: // Briefing Soviet Army
{ 	
        player createDiaryRecord ["diary", ["Условности | Conventions","[1] Зона захватывается при наличии синих меньше трёх, и наличии красных больше трёх. Либо при двухкратном преимуществе захватывающих.
<br/>[2] В <marker name = 'restriction_zone'>области</marker> отмеченной красной линией, возможность возведения траншей отключена.
<br/>
<br/>[1] Zones are captured when there are less than three red and there are more than three blue. Or with a twofold advantage of attackers.
<br/>[2] In the <marker name = 'restriction_zone'>area</marker> marked with a red line, the ability to erect trenches is disabled."]];
	    player createDiaryRecord ["diary", ["Форма сторон | Side Uniform","<font color='#3b85ff'>Армия США / US Army</font><br/>
		<img image='Images\blue.jpg' width='367' height='205'><br/>
		<br/><font color='#ff3333'>Вооружённые силы СССР / Armed forces of the USSR</font><br/>
		<br/><img image='Images\red.jpg' width='367' height='205'><br/>
		<br/><font color='#ff3333'>СПН ВС СССР / SOF AF USSR</font><br/>
		<br/><img image='Images\redspn.jpg' width='367' height='205'>"]];
		player createDiaryRecord ["diary", ["Дополнительная информация", "В грузовике снабжения с боеприпасами находятся:
<br/> - 480 3УБР8 БПС (3 ленты по 160)
<br/> - 1020 3УОФ8 ОФС (3 ленты по 340)"]];
		player createDiaryRecord ["diary", ["Текущая ситуация", "Нашей отдельной роте прорыва поставлена задача захватить полевую <marker name = 'zone'>базу</marker> армии США, пока противник увяз в боях на флангах.
<br/>Наши силы сейчас находятся <marker name = 'opfor_start'>здесь</marker> и движутся к региону дислокации противника. В составе роты:
<br/>Гвардейская мотострелковая рота:
<br/> -  1х Уаз-3151
<br/> -  3х БТР-80
<br/> -  3х БМП-2
<br/> -  1х Урал-4320 с 2х 2Б14
<br/>Танковый взвод:
<br/> -  3х Т-80У
<br/>Отделение мед.помощи и эвакуации:
<br/> -  1х МТ-ЛБ (мед.)
<br/> -  1х Газ-66-АП-2
<br/>Отделение материально-технического обеспечения:
<br/> -  1х Урал-4320 (Ремонт)
<br/> -  1х Урал-4320 (Бензовоз)
<br/> -  1х Урал-4320 (Боеприпасы)
<br/>Авиация:
<br/> -  1х Ту-95МС «Медведь»
<br/>Несущий на борту: КР Х-55 в кол-ве 6 шт, а также бомбы ФАБ-500 в кол-ве 10 штук (не имеет прицельного оборудования для применения свободнопадающих боеприпасов)"]];
		player createDiaryRecord ["diary", ["Поставленная задача | The task", "Захватить расположение полевой <marker name = 'zone'>базы</marker> Армии США.<br/>
		<br/>Capture the location of the US Army field <marker name = 'zone'>base</marker>."]];
};
};

player createDiaryRecord ["diary", ["Вводная | Introduction", "Сводные войска ВС СССР атакуют расположение полевой базы Армии США в городе Shwemlitz.<br/>
<br/>Combined forces of the Soviet Army attack the location of the US Army field base in the city of Shwemlitz."]];
player createDiaryRecord ["diary", ["Легенда | Lore", "Зима, 1988 года. Оказавшись на грани экономического краха в ходе холодной войны, Советский союз требует от Запада помощи. Весна, 1989 года. Переговоры идут медленно, без видимых результатов. Тем временем растёт напряжённость между странами НАТО и Варшавского Договора. Лето, 1989 года. Представители блока НАТО покидают состав участников, переговоры по вопросу мирного договора прерваны. Июнь, 1989 года. Группа советских войск в Германии, разрушив берлинскую стену, вторглась на территорию ФРГ и атаковала части военных подразделений Армии США, начав Великую Освободительную войну советского народа от оков капитализма.<br/>
<br/>Winter 1988. Driven to the brink of economic ruin by the Cold War, The Soviet Union demands aif from the west. Spring 1989. As the negotiations drag on with no discernable end in sight, tensions rise along the Iron Curtain. Summer 1989. Representatives of the NATO bloc leave the membership, negotiations on a peace treaty have been interrupted. June 1989. A group of Soviet troops in Germany, having destroyed the Berlin Wall, invaded the territory of the Federal Republic of Germany and attacked  the military units of the US Army, starting the Great War of Liberation of the Soviet people from the shackles of capitalism."]];
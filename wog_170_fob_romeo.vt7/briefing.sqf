waitUntil {
    !isnil {
        player
    }
};

waitUntil {
    player == player
};



switch (side player) do
{
    case west: // Briefing United States Army
    {
        player createDiaryRecord ["diary", ["Задача | Objective", "<font color='yellow'>EN:</font><br/>Defend <marker name = 'zone'>FOB Romeo</marker>.<br/><br/><font color='yellow'>UA:</font><br/>Захистити <marker name = 'zone'>FOB Romeo</marker><br/><br/><font color='yellow'>RU:</font><br/>Защитить <marker name = 'zone'>FOB Romeo</marker>.<br/>"]];
    };
    
    case east: // Briefing Soviet Army
    {
        player createDiaryRecord ["diary", ["Задача | Objective", "<font color='yellow'>EN:</font><br/>Capture <marker name = 'zone'>FOB Romeo</marker>.<br/><br/><font color='yellow'>UA:</font><br/>Захопити <marker name = 'zone'>FOB Romeo</marker>.<br/><br/><font color='yellow'>RU:</font><br/>Захватить <marker name = 'zone'>FOB Romeo</marker>.<br/>"]];
    };
};

player createDiaryRecord ["diary", ["Условности | Conventions", "<font color='yellow'>EN:</font><br/>- Zone will be captured when there are less than 3 red and there are more than 3 blue. or with a twofold advantage of attackers<br/>- It is perhibited to build trenches in the <marker name = 'zone'>FOB Romeo</marker><br/>- There are 3 defensive points near the base: <marker name = 'defend1'>1</marker>, <marker name = 'defend2'>2</marker>, <marker name = 'defend3'>3</marker><br/>- Only USSSR Special forces can use wetsuit<br/><br /><font color='yellow'>UA:</font><br/>- Зона захоплюється при наявності менше 3 синіх, і більше 3 червоних або при подвійній перевазі захоплюючих<br/>- Заборонено будувати траншеї в <marker name = 'zone'>FOB Romeo</marker><br/>- Поряд з базою розміщені 3 опорні точки: <marker name = 'defend1'>1</marker>, <marker name = 'defend2'>2</marker>, <marker name = 'defend3'>3</marker><br/>- Тільки СпН ВС СССР можуть використовувати водолазний костюм<br/><br /><font color='yellow'>RU:</font><br/>- Зона захватывается при наличии синих меньше трёх, и наличии красных больше трёх. Либо при двухкратном преимуществе захватывающих<br/>- Зона захватывается при наличии синих меньше трёх, и наличии красных больше трёх. Либо при двухкратном преимуществе захватывающих<br/>- Запрещено строить траншеи в <marker name = 'zone'>FOB Romeo</marker><br />- Рядом с базой размещены 3 опорные точки: <marker name = 'defend1'>1</marker>, <marker name = 'defend2'>2</marker>, <marker name = 'defend3'>3</marker><br/>- Только СпН ВС СССР могут использовать водолазный костюм<br/>"]];
player createDiaryRecord ["diary", ["Форма сторон | side uniform", "<font color='#3b85ff'>Армия США / US Army</font><br/>
    <img image='images\blue.jpg' width='367' height='205'><br/>
    <br/><font color='#ff3333'>ВС СССР / Armed forces of the USSR</font><br/>
    <br/><img image='images\red.jpg' width='367' height='205'><br/>"]];

player createDiaryRecord ["diary", ["Легенда | Lore", "<font color='yellow'>EN:</font><br/>May, 1984, somewhere in Europe. The USSR Armed Forces for the second night in a row, despite their losses, trying to capture FOB Romeo. After the last attack, US Army forces suffered heavy losses and had to wait for reinforcements.<br/>With a small amount of equipment and limited resources in reserve, they are tasked with holding the base until the arrival of fresh forces.<br /><br/><font color='yellow'>UA:</font><br/>Травень, 1984 рік, десь у Європі. ЗС СРСР другу ніч поспіль, незважаючі на втрати намагаються захопити FOB Romeo. Після останньої атаки сили армії США зазнали значних втрат та вимушені очікувати на підкріплення.<br/>Маючи в запасі невелику к-сть техніки та обмежені ресурси їм поставлена задача - втримати базу до приходу свіжих сил.<br/><br/><font color='yellow'>RU:</font><br/>Май 1984 год, где-то в Европе. ВС СССР вторую ночь подряд, несмотря на потери, пытаются захватить FOB Romeo. После последней атаки силы армии США понесли значительные потери и вынуждены ожидать подкрепления.<br />Имея в запасе небольшое кол-во техники и ограниченные ресурсы им поставлена задача – удержать базу до прихода свежих сил."]];
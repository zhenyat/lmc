class PopulateBehavior < ActiveRecord::Migration
  def change
#####  Competency: product   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'product').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1', description: 'Я знаю товар своего отдела и его расположение. Я прошел обучения по ОЗТ'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_2', description: 'Я знаю товар ЛЦ, Бестселлер и СТМ и AVS отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_3', description: 'Я знаю, как использовать товар'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_4', description: 'Я знаю политику НЦКД'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_5', description: 'Я бережно отношусь к товару; снижаю потери'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_6', description: 'Я выкладываю товар своего отдела-заполняю полки'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1', description: 'Я знаю характеристики товара всего отдела и могу проконсультировать своих клиентов по установке товара. Я прошел обучения Мастер классы школы ремонта, ОЗТ 2 уровень'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_2', description: 'Я знаю сопутствующий товар к основному товару'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_3', description: 'Я тестирую все товары отдела в Школе ремонта'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_4', description: 'Я знаю конкурентов (знаю имплантацию, что есть в наличии, цены), принимаю участие в мониторинге'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_5', description: 'Я знаю план торговых операций отдела, пополняю ТЖ и подиум отдела (слежу за наличием товара)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_6', description: 'Я рассказываю своим коллегам о товарах своего отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_7', description: 'Я знаю и анализирую уровень продаж своих товаров'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1', description: 'Я предлагаю товар соотвествующий уровню потребностей моих клиентов (из соотвестующего ценового сегмента)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_2', description: 'Я предлагаю кросс продажу'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_3', description: 'Я заказываю товары для ТЖ, подиума отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_4', description: 'Я участвую в выборе товара для ТЖ'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_5', description: 'Я предлагаю план по изменению линейных метров'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_6', description: 'Я передаю свои знания и опыт по товару'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_7', description: 'Я могу примать участие в рабочих группах по созданию коллекций(я передаю потребности клиентов,качество товаров,качество и размер упаковки,сервис поставщика)'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1', description: 'Я знаю конкурентов, знаю чем их гамма отличается от моей'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_2', description: 'Я предлагаю товар с лучшими показателями продаж для участия в PAC отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_3', description: 'Мои лучшие практики по адаптации стока используются коллегами в отделе, магазине, компании'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'product').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1', description: 'Я знаю все товары своего отдела и могу проконсультировать покупателей по качеству товара, его установке и применению'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_2', description: 'Я знаю списки товаров ЛЦ, СТМ, Бестселлеры'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_3', description: 'Я знаю свое месторасположение на рынке'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_4', description: 'Я знаю особенности возвратного товара'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_5', description: 'В моих подотделах товары ТОП 1 присутсвтуют 100%'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_6', description: 'Я знаю политику НЦКД-НРКД:обеспечиваю наличие товаров в достаточном количестве для моих целевых клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_7', description: 'Я выполняю план ПБНП'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1', description: 'Я знаю как товары в моих группах распределены по кварталям'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2', description: 'Я работаю над товраным предложением 1 группы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3', description: 'Я предлагаю товар, согласно изменениям уровня потребностей моего клиента'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_4', description: 'Я вношу предложения по ПБНП'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_5', description: 'Я сокращаю списки товаров AVS'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1', description: 'Товарное предложение моих групп соотвествует политике НЦКД'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2', description: 'Я знаю гамму конкурентов и чем они отличаются от моей (по своим подгруппам)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_3', description: 'Я работаю над товарным предложением всех своих групп'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_4', description: 'Я могу принимать участие в рабочих группах на уровне компании по созданию коллекций, согласно изменению потребностей клиентов по ширине и глубине гаммы'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1', description: 'ТОП 1 гаммы в моих группах позволяет моим клиентам реализовать полностью весь проект'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_2', description: 'Мой план действий усиливает стратегические группы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_3', description: 'Я оптимизирую гаммы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_4', description: 'В моих товарных группах есть ответы на все потребности моих клиентов'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'product').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: 'Я знаю все товары своего отдела и могу проконсультировать покупателей по качеству товара, его установке и применению'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2',  description: 'Я знаю группы товаров моего отдела, могу разложить их на типы, подтипы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3',  description: 'Я могу объяснить показатели групп товаров (типы, подтипы), знаю сильные и слабые группы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4',  description: 'Я использую принципы НЦКД-НРКД в ежедневной работе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_5',  description: '70% моего товарного предложения находится в 1 и 2 квартилях'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_6',  description: 'У меня есть все товары Лучшая цена'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_7',  description: 'Я вовремя и в полном объеме имплантирую товары СТМ'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_8',  description: 'Бестселлеры имплантированы в объеме необходимом нашим клиентам (с учетом продаж)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_9',  description: 'Я внедряю новую коллекцию до конца марта'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_10', description: 'Я знаю свое местоположение на рынке, знаю гамму и ценовую политику конкурентов и знаю чем они отличаются от меня'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_11', description: 'Я знаю особенности товара (список возвратного товара (интересы клиентов), список товаров, качество которого гарантирует ЛМ)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_12', description: 'Я управляю гаммой используя TBPC (100% продаваемой гаммы, количество AVS, не продаваемые артикулы более 3-х месяцев)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_13', description: 'Я выполняю ПБНП (план борьбы с неизвестными потерями) совместно с контролером '

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1', description: 'ТОП 1 гаммы магазина позволяет моим клиентам реализовать полностью весь проект (Например: ламинат, подложка, плинтус, аксессуары)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2', description: 'Мой план действий усиливает стратегические группы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3', description: 'Я оптимизирую мои гаммы (равнение на лидера, приоритет ширине,  а затем глубине в стратегических группах)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_4', description: 'Мое товарное предложение отвечает на все потребности моих клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_5', description: 'Я знаю уровень своих неизвестных потерь,анализирую и создаю ПБНП'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1', description: 'Я выявляю потребности моих клиентов и вношу предложения по оптимизации гаммы (участвую в рабочих группах по оптимизации гаммы семей отдела)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_2', description: 'Я являюсь примером (Best practice) на уровне региона'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_3', description: 'Я могу проанализировать отдельные группы, я помогаю своим коллегам'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_4', description: 'Я выявляю потребности моих клиентов и вношу предложения по оптимизации гаммы (участвую в рабочих группах по оптимизации гаммы семей отдела)'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1', description: 'Я участвую в формировании новой коллекции Компании'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_2', description: 'Я разрабатываю планы имплантации новой коллекции'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_3', description: 'Я участвую в определении качества и видов товаров СТМ'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_4', description: 'Я отслеживаю тенденции в дизайне интерьера,технологиях производства Я отслеживаю тенденции в дизайне интерьера, технологиях производства стройматериалов для понимания потребности будущих клиентов'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'product').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1', description: 'Магазин заполнен товаром и чист'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2', description: 'Я своевременно внедряю коллекции'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_3', description: 'У меня есть все товары гаммы А, ЛЦ, BS, СТМ'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_4', description: 'Я знаю стратегию компании в товарном предложении и внедряю ее в магазине'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_5', description: 'Я являюсь гарантом реализации стратегии компании'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1', description: 'Ежемесячно вместе с РС мы смотрим гамму, анализируем ее и приводим к улучшению. Ценовая шкала, вместимость стеллажа, продажи (количественный аспект)'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1', description: ' У меня есть  стратегия работы с гаммами по товарным категориям, которая отличает меня от конкурентов'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1', description: 'Сотрудничая с отделом закупок, я влияю на нашу ассортиментную стратегию и на имплантацию товаров в магазине'

#####  Competency: client   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'client').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1', description: 'Я знаю и соблюдаю правила ВУППС'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_2', description: 'Я работаю с клиентами: отвечаю на вопросы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_3', description: 'Если я не знаю ответа на вопрос клиента, я обращаюсь к более опытному коллеге'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_4', description: 'Я предоставляю услуги в отделе (например: я выписываю доставку)'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1', description: 'Я образец в ВУППСэ '
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_2', description: 'Я управляю очередью (когда я работаю с клиентом, я реагирую на следующих клиентов, здоровуюсь с ними, сообщаю, сколько времени им нужно будет подождать)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_3', description: 'В разговоре с клиентом я выясняю их  потребности и делаю предложения (владею техникой продаж) - комплексная продажа на уровне отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_4', description: 'Я самостоятельно разрешаю сложные и конфликтные ситуации с покупателями'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_5', description: ' Моя работа предупреждает жалобы клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_6', description: 'Я знаю показатели индекса удовлетворенности магазина'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1', description: 'Я предлагаю действия по улучшению индекса удовлетворенности'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_2', description: 'Я работаю с жалобами (я понимаю причины возникновения жалоб и вношу предложения для предотвращения жалоб)'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1', description: 'Я изучаю потребности клиента и вношу свои предложения РС'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'client').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1', description: '100% рабочего времени я нахожусь в торговом зале и обслуживаю клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_2', description: 'Я являюсь образцом в обслуживании клиентов (ВУППС)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_3', description: 'Я разрешаю сложные ситуации с клиентами'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_4', description: 'Я совершаю визиты к клиентам 1 раз в год'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1', description: 'Я обеспечиваю соблюдение продавцами - консультантами правил ВУППС и техники продаж'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2', description: 'Я знаю дерево потребностей моих клиентов в моих подотделах'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3', description: 'Я знаю показатели индекса удовлетворенности магазина и работаю над улучшением показателей'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1', description: 'Я знаю дерево потребностей своих клиентов во всех подотделах и управляю товарным предложением в зоне моей ответственности'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2', description: 'Я изучаю потребности клиентов для адаптации дерева потребностей во всех группах'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_3', description: 'Я работаю над индексом удовлетворенности: знаю его показатели, у меня есть план действий по улучшению показателей'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1', description: 'Я предлагаю коллегам из других отделов конкретные действия по улучшению показателей индекса удовлетворенности'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'client').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1', description: '80% рабочего времени я нахожусь в аллее в торговом зале и обслуживаю клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2', description: 'Я являюсь образцом в обслуживании клиентов, соблюдаю правила ВУППС'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3', description: 'Моя команда соблюдает правила ВУППС'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4', description: 'Я знаю 4 типа клиентов (и своих клиентов)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_5', description: 'Я совершаю визиты к клиентам не реже 1 раза в месяц'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_6', description: 'Каждый член моей команды совершает визиты к клиентам (не менее 1 раза в год)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_7', description: 'Я разрешаю сложные ситуации с клиентами (жалобы, возврат товара) – я реагирую на все замечания клиентов (ответ на жалобу предоставляю в течение 5  дней) и предпринимаю конкретные действи'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_8', description: 'Я знаю показатели индекса удовлетворенности'

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1', description: 'Я провожу в магазине тренинги по работе с клиентами (например, Техника продаж, ВУППС, Разрешение сложных ситуаций)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2', description: 'Я знаю дерево потребностей своих клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3', description: 'Я анализирую индекс удовлетворенности и выполняю действия для улучшения показателей (Например, наличие ПК – пересматриваю график; наличие товара – адаптирую сток, поставки; скорость обслуживания – обучаю команду технике продаж, ОЗТ)'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1', description: 'Я и моя команда - пример в соблюдении правил ВУППС на уровне магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_2', description: 'Я постоянно изучаю профиль, тип моих клиентов и адаптирую товарное предложение'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_3', description: 'Я могу разрешить все сложные ситуации с клиентами'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_4', description: 'Я использую лидерский подход для улучшения показателей индекса удовлетворенности'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1', description: 'Я знаю ключи успеха в работе с клиентами (как изучить потребности, как работать с клиентами в сложных ситуациях) и передаю их другим РС'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'client').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1', description: 'Знаю своих целевых клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2', description: 'У меня есть базовые услуги, цена и качество которых пользуется спросом у клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_3', description: 'На СД я веду тему: «Голос клиента»'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_4', description: 'Я знаю и анимирую анкету по удовлетворению клиентов'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1', description: 'Я умею работать с жалобами клиентов, принимаю необходимые меры для исправления ситуаций'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_2', description: 'Визиты к клиентам дают мне материал для грамотного ведения коммерции и для работы с гаммами'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1', description: 'Мой СД умеет самостоятельно планировать визиты к клиентам и регулярно отчитываться'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_2', description: 'Я знаю типологию своих клиентов'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1', description: 'Стремление лучше знать клиентов и удовлетворять их потребности – постоянная цель сотрудников моего магазина на всех уровнях'


#####  Competency: price   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'price').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1', description: 'Я каждый день проверяю соответствие товар - ценник и наличие ценников'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_2', description: 'Я делаю ценники самостоятельно'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_3', description: 'Я знаю, что товары в моем отделе на 5% дешевле, чем у конкурентов (принцип НЦКД)'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1', description: 'Я передаю информацию о ценах конкурентов, полученную от покупателей, МО или РС (в случае, если цена конкурентов ниже, чем цена ЛМ)'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1', description: 'Я участвую в мониторинге и знаю мои цены на товары ЛЦ, Бестселлеры и цены конкурентов на эти товары'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_2', description: 'Я предлагаю снижение цены по результатм мониторинга'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1', description: 'Я участвую в рабочей группе по мониторингу магазина и анимации результатов мониторинга'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'price').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1', description: 'Я участвую в мониторинге  и знаю мои цены на товары ЛЦ, Бестселлеры и цены конкурентов на эти товары'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_2', description: 'Я знаю ценовую политику в рамках концепта НЦКД и передаю эти знания команде'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_3', description: 'Я соблюдаю ценовую шкалу в зоне своей ответственности'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_4', description: 'У всех товаров в моем отделе есть ценники'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1', description: 'Я соблюдаю ценовую шкалу и предлагаю цены на товары в подотделах зоны моей ответственности'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2', description: 'Я организую и провожу дебрифы мониторинга цен с командой, объясняет команде логику ценовой линейки'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3', description: 'Я предлагаю цены в одной группе товаров, над товарным предложением которой я работаю (товар, гамма)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_4', description: 'Я регулярно анализирую отчет по товарам с негативной маржой и передаю информацию команде и РС, я знаю товары с негативной маржой'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1', description: 'Я изменяю цены в подотделах зоны своей ответственности по результатам мониторинга в соответствии с политикой НЦКД'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2', description: 'Я работаю с негативной маржой (например, я сообщаю в ЦО об отрицательной марже, я возвращаю цену после мониторинга конкурентов)'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1', description: 'У меня есть стратегия цены для групп товаров, с которыми работаю'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_2', description: 'Я работаю с микс маржой путем регулирования цен на товары–аналоги'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'price').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1', description: 'Цены в моем отделе минимум на 5% дешевле, чем у конкурентов (политика НЦКД)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2', description: 'Я соблюдаю шкалу цен, шкала цен в моем отделе без резких скачков. Я обучаю этому свою команду'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3', description: 'Я организовываю регулярный мониторинг цен конкурентов (не реже 2 раз в месяц)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4', description: 'У всех товаров в моем отделе есть ценники'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_5', description: 'Я знаю товары с негативной маржой и работаю над этим  вместе с КУ, ДМ и РН'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_6', description: 'Я обеспечиваю единые цены на товары ТОП 1 во всех магазинах нашего города '
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_7', description: 'Я знаю ПАК конкурентов и своевременно на него реагирую'

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1', description: 'Моя команда понимает и применяет ценовую политику'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1', description: 'Я проявляю инициативу в управлении ценами в зоне обслуживания моего магазина: я – лидер по ценам (например, я РС - куратор проекта Мониторинг)'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1', description: 'РН привлекает меня для составления ценовой шкалы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_2', description: 'Я - пример по воплощению политики НЦКД'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'price').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1', description: 'Я гарантирую соблюдение концепции НЦКД в своем магазине'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1', description: 'У меня есть стратегия работы с негативной маржой в рамках моей стратегии по ценам'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_2', description: 'Я сопровождаю команду РС в работе с негативной маржой'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1', description: 'У меня есть  стратегия работы с ценами по товарным категориям, которая отличает меня от конкурентов'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1', description: 'Работая вместе с региональной дирекцией и отделом маркетинга, а также используя свои знания рынка, я предлагаю инновационные решения для конкурентоспособности наших цен/товаров'

#####  Competency: commerce   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'commerce').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1',  description: 'Я понимаю смысл коммерческих операций в своем отдел'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_2',  description: 'Я знаю коммерческие зоны своего отдела и магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_3',  description: 'Я знаю и понимаю отчет HI42'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_4',  description: 'Я понимаю значение продаж товаров с кроссов и вывешиваю товар вовремя'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1',  description: 'Я понимаю,какие товары продаются в определенных коммерческих зонах и почему'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_2',  description: 'Я предлагаю товары для коммерческих зон'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_3',  description: 'Я знаю коммерческие показатели своего подотдела(HI22)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_4',  description: 'Я готовлю товар к возврату после окончания коммерческой операции'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_5',  description: 'Я активно участвую в продажах товаров своего отдела с центрального подиума магазина'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1',  description: 'Я предлагаю товар с лучшими продажами для включения в  план коммерческих операций на 6 мес. по своей зоне ответственности'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_2',  description: 'Я анализирую результаты продаж товаров своего отдела с центрального подиума магазина и вношу предложения предложения для увеличения показателей с подиума'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1',  description: 'Я участвую в рабочей группе, связанной с коммерческими операциями на уровне магазина (кроссы, ТЖ касс и пр.)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_2',  description: 'Я понимаю значение результата продаж с подиума отдела и анимирую результаты для своей команды'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'commerce').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1',  description: 'Я заказываю товар для ТЖ, подиумов отдела по своей группе товара, используя план предоставленный РС'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_2',  description: 'Я работаю над центральным подиумом (заказываю товар, организую выкладку, организую построение подиума, выкладку товара, заказываю бализаж'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_3',  description: 'Я знаю и понимаю значение коммерческих операций и коммерческих зон отдела / магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_4',  description: 'Я знаю план коммерческих операций отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_5',  description: 'Я понимаю логику предложения товаров для продажи с кроссов для своего отдела и отделов магазина'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1',  description: 'Я совместно с РС сставляю план торговых операций на 6 месяцев по своим подгруппам, учитывая сезонность.'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2',  description: 'Я вместе с РС анализирую результаты коммерческих акций'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3',  description: 'Я даю предложения по организации центрального подиума'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_4',  description: 'Я договариваюсь с поставщиками о возврате товара после коммерческих операций'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_5',  description: 'Я предлагаю и аргументирую необходимость расположения товаров моего отдела на кроссах других отделов магазина'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1',  description: 'Я самостоятельно составляю план коммерческих операций отдела на 6 мес по своим группам товаров, учитывая сезонность'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2',  description: 'Я представляю результаты своего подиума на СД магазина'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1',  description: 'Я участвую в рабочей группе по формироаниюPAC магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_2',  description: 'Я анализирую результаты коммерческих операций по товарам, даю свои рекомендации отделам, ориентируясь на магазин лидер города, региона, страны'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_3',  description: 'Я провожу (или вместе с РС готовлю) брифов и дебрифов по коммерческим операциям своего отдела'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'commerce').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: 'Товары 20/80 в моем отделе адаптированы к сезону (ТЖ, подиум отдела)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2',  description: 'Я создаю и соблюдаю план торговых операций отдела, анализирую показатели и своевременно принимаю меры по исправлению ситуации'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3',  description: 'При его составлении я опирался на товар и срок, предложенный ЦО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4',  description: 'Я организую центральный подиум. Подиум планируется и выставляется согласно принципам НЦКД-НРКД'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_5',  description: 'Я являюсь гарантом наличия продавцов на центральном подиуме магазина для продажи товаров моего отдела'

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1',  description: 'У меня есть план торговых операций на 6 месяцев'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2',  description: 'При его составлении я опирался на предложения ЦО, но адаптировал их с учетом сезонности, региона, спроса клиентов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3',  description: 'Я анализирую результаты коммерческих операций(Например, готовлю де бриф) и учитываю их для составления нового плана'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_4',  description: 'Я обучаю свою команду проведению коммерческих акций (значение, важность, задачи, этапы подготовки и проведения)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_5',  description: 'Я знаю показатели Лидера по коммерческим операциям в стране и применяю\адаптирую лучшие практики в своей работе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_6',  description: 'Я знаю долю продаж моего отдела с центрального подиума магазина'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1',  description: 'Я помогаю организовать PAC другим РС в магазине'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_2',  description: 'Результаты моего РАС  стабильно повышают результаты отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_3',  description: 'Я участвую в рабочей группе по PAC моего магазина (анализирую результаты центрального подиума всех отделов на уровне магазина и вношу предложения по составлению PAC магазина на год)'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1',  description: 'Мой РАС положительно сказывается на ценовом имидже магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_2',  description: 'Мои лучшие практики признаются и применяются на уровне региона'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'commerce').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1',  description: 'Я своевременно участвую в плане ком.операций на федеральном уровне'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2',  description: 'У меня также есть план операций в отделах'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_3',  description: 'Бестселлеры и товары лучшая цена имплантированы 100%'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1',  description: 'Мой РАС вписывается в логику всего магазина (услуги / логистика)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_2',  description: 'Я измеряю результаты'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1',  description: 'Мой РАС положительно сказывается на ценовом имидже магазина и связан с моей ценовой стратегией'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_2',  description: 'Результаты РАС повышают ТО магазина'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1',  description: 'Мои подиумы служат примером при проведения РАС на федеральном уровне. 2. Каждый отдел знает ТО каждой ТЖ'

#####  Competency: logistics   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'logistics').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1',  description: 'Я оформляю товар на  доставку/ самовывоз в соответствии с процедурами магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_2',  description: 'Я своевременно пополняю стоки и фейсы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_3',  description: 'Я своевременно вывожу товара из буферной зоны, отзываю товар с RD'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_4',  description: 'Я делаю товар доступным для клиентов:разбираю паллеты,снимаю товар с верхних полок,привожу со склада'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1',  description: 'Я знаю, что такое руптюры и предпринимаю действия для их снижения'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_2',  description: 'Я ежедневно сканирую руптюры и выкладываю каждый артикул'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1',  description: 'Я готовлю товар AVS для возврата поставщикам'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_2',  description: 'Я сообщаю менеджерам и руководителю о товарах которые постоянно отсутствуют'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_3',  description: 'У меня нет ошибок при работе с товарами на доставку'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1',  description: 'Я размещаю товары таким образом чтобы их удобно было пооплнять'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_2',  description: 'Я участвую расчетах фейсинка и управлении линейными метрами'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'logistics').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1',  description: 'Я своевременно заказываю товар'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_2',  description: 'Я управляю графиком поставщиков (даты выхода бланка, дата отправки заказа, дата получения товара, фиксированные поставщики)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_3',  description: 'Я управляю потоками RD, LS, EM, импорт; слежу за движением товара'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_4',  description: 'Стоки товара оптимальны'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_5',  description: 'Я выпоняю обязательства по срокам хранения и оборачиваемости стока'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_6',  description: 'Я организую ежедневное сканирование руптюр, анализирует отчеты'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_7',  description: 'Я знаю цели компании по доступности товаров (теоретич и физич руптюры) и делаю корректные и своевременные заказы товаров'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1',  description: 'Я слежу за показателями управления товарным запасом по одной товрной группе (стоимость товарного запаса,  структура стока, оборачиваемость товарного запаса) и осуществляю действия направленные на улучшение показателей'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2',  description: 'Я соблюдаю цели магазина по перебоям'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3',  description: 'Я активно взаимодействую с поставщиками и ЦО при возникновении перебоев по вине поставщика'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_4',  description: 'Я организую эффективное складирование'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_5',  description: 'Я оптимизирую логистические ТОПы'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1',  description: 'Я слежу за показателями управления товарным запасом во всех своих товрных группах (стоимость товарного запаса, AVS, структура стока, оборачиваемость товарного запаса) и осуществляю действия направленные на улучшение показателей'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1',  description: 'Я управляю запасами с очень плохой оборачиваемостью'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_2',  description: 'Мой сток соовтествует периоду покрытия'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'logistics').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: 'Я знаю  логистическую цепочку поставок (магазина и компании)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2',  description: 'Я обеспечиваю регулярное составление заказов с помощью ПАЗ'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3',  description: 'В отделе есть и соблюдается график поставщиков'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4',  description: 'В моем отделе ежедневно проводится сканирование руптюр, отчеты обраба-тываются и ошибки корректируются'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_5',  description: 'Запас 20/80 оптимален и адаптирован под потребности клиента'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_6',  description: 'Я обучаю команду работе с перебоями (МОЖЕТ ЛОГИСТИЧЕСКАЯ ЦЕПОЧКА)'

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1',  description: 'Я организую поставки с учетом вместимости и продаж'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2',  description: 'Я грамотно управляю логистическими потоками, в  торговом зале отсут-ствуют неразобранные полеты, сроки хранения паллет на складе оптимальны'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3',  description: 'Логистическая цепочка организована с учетом продаж, клиент находит нужный товар, поставки равномерны, график поставок учитывает ресурс сотрудников и количество покупателей в зале (полки пополняются своевременно)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_4',  description: 'Теоретические перебои равны физическим и ниже среднего по магазину'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_5',  description: 'Я слежу за показателями  управления товарным запасом (Стоимость товарного запаса, структура стока, оборачиваемость товарного запаса)  и осуществляю действия, направленные на улучшение показателей'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1',  description: 'Я помогаю другим РС оптимизировать настройки ПАЗ для оптимизации логистических потоков'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_2',  description: 'Я лидер в регионе (по AVS, оборачиваемость стока, соотношение 20/80 и 80/20, мертвый сток)'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1',  description: 'Я участвую в проектах по оптимизации логистических потоков'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_2',  description: 'Я являюсь наставником для других РС по управлению стоком (я знаю ключи успеха и могу их объяснить)'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'logistics').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1',  description: 'Сотрудникам и клиентам понятна политика доставки и самовывоза'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2',  description: 'Мои тарифы самые низкие в зоне охвата магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_3',  description: 'Политика приема товаров на возврат понятна и проста'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_4',  description: 'Я знаю состояние запасов по количеству и качеству, обсуждаю эту информацию с РС логистики. Могу принять первые меры для исправления ситуации. '
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_5',  description: '100% бестселлеров есть в наличии'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1',  description: 'Каждый отдел использует доставку и самовывоз, понимая связанные с ними цели и пользу. Ошибки минимальны, РС логистики вовлечен в обучение персонала и в упрощение процессов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_2',  description: 'Я умею управлять запасами с очень плохой оборачиваемостью'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_3',  description: 'Я своевременно работаю с сезонами'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_4',  description: 'Я оптимизирую наличие бестселлеров и товаров 20/80'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1',  description: 'Я использую свою логистику по вывозу товаров как инструмент превращения посетителей в постоянных клиентов и для получения ТО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_2',  description: 'Благодаря грамотной работе с заказами и планом продаж, я так прогнозирую запасы, что они соответствуют обязательствам по счету'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1',  description: 'Я влияю на нашу политику логистических услуг, проводя тесты и добиваясь успеха'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_2',  description: ' Управление запасами и бестселлерами – эффективный инструмент улучшения счета'

    #####  Competency: merchandasing   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'merchandasing').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1',  description: 'Я выполняю правила 3 А: пополняю / выравниваю фейсинги, проверяю наличие и правильность нумерации и навигации, я проверяю правильность бализажа (ЛЦ Предложение ограничено, НЦКД), я заказываю бализаж соответствующего формата, я правильно оформляю товары ЛЦ и новинки'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_2',  description: 'Я строю привлекательное ТЖ для наших клиентов под руководством МО / РС'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_3',  description: 'Я поддерживаю чистоту и порядок в отделе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_4',  description: 'Я умею оформлять техфишки.(оформляю,распечатываю,вывешиваю на товар)'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1',  description: 'Я предлагаю улучшить эффективность выкладки (с учетом потребностей клиентов и продажами)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_2',  description: 'Я самостоятельно устанавливаю ТЖ'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1',  description: 'Я самостоятельно могу организовать переимплантацию в одной семье, соблюдая принципы мерчендайзинга (используя детальный план, план ТЖ, РАС,  с привлечением команды отдела)'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1',  description: 'Я могу участвовать в рабочих группах микромерчендайзинга в ЦО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_2',  description: 'Я могу участвовать в проектах при открытии другого магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_3',  description: 'Я самостоятельно могу организовать переимплантацию в одной семье, соблюдая принципы мерчендайзинга (используя метод УЛПРУШ)'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'merchandasing').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1',  description: 'Я гарантирую,  что товары отдела  выложены по плану имплантации  есть экспо и его нумерация, образец, техфишка, ценники, бализаж'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_2',  description: 'Я соблюдаю детальный план и логику цен'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_3',  description: 'Я знаю и соблюдаю все принципы мерчендайзинга'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1',  description: 'Я провожу анализ эффективности выкладки в одной товарной группе и оптимизирует представление товара в одной группе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2',  description: 'Я имплантирую новые коллекции вовремя'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3',  description: 'Я внедряю дидактику, информационный и  поясняющий бализаж,  для развития комплексных продаж'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1',  description: 'Я разрабатываю дидактику, информационный и  поясняющий бализаж,  для развития комплексных продаж'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2',  description: 'Я предлагаю планы имплантации с учетом потребностей клиентов'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1',  description: 'Я принимаю участие в разработке новых коллекций (новые идеи по мерчендайзингу, новые фасовки, упаковки, бализаж)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_2',  description: 'Я тестирую новые идеи по мерчендайзингу в рамках новой коллекции'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_3',  description: 'Имплантация в моей зоне ответственности понятна клиентам (Например: ключи выбора, логика имплантации, логика цены – все упрощает самообслуживание)'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'merchandasing').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: 'Я обеспечиваю логику имплантации в отделе, понятную клиентам'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2',  description: 'Я использую готовые планы имплантации'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3',  description: 'Я контролирую соблюдение всех правил мерчендайзинга в отделе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4',  description: 'Я обеспечиваю безопасность использования оборудования (например, максимальная нагрузка на балки, высота выкладки паллет)'

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1',  description: 'Я анализирую эффективность выкладки  и оптимизирую предложение товара в моем отделе (например: произвожу замену крючков на корзины)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2',  description: 'Я меняю планы имплантации с учетом потребностей клиентов и под логистику совместно с РН'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3',  description: 'Я обеспечиваю наличие дидактики, информационного и  поясняющего бализажа,  для развития комплексных продаж'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_4',  description: 'Имплантация соответствует НЦКД, мои клиенты видят товары ЛЦ, СТМ'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1',  description: 'Я являюсь примером для других РС, они используют мои лучшие практики'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1',  description: 'Мои решения по предложению товара признаются на уровне компании'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_2',  description: 'Я знаю ключи успеха имплантации в отделе и могу этому научить свои коллег'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'merchandasing').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1',  description: 'Каждый раз, когда у меня есть планы мерчендайзинговых решений, я их внедряю'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2',  description: 'Я обеспечиваю имплантацию в магазине в соответствии с правилами мерчендайзинга'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1',  description: 'Я распространяю лучшие практики магазинов лидеров по мерчендайзенгу'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1',  description: 'В торговом зале я работаю с РС над качеством мерчендайзинга: потребность клиента / выбор / ключ входа (качественный аспект) '

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1',  description: 'Сотрудничая с отделом закупок, я влияю на нашу ассортиментную стратегию и на имплантацию товаров в магазине'

#####  Competency: integration   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'integration').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1',  description: 'Я могу принимать участие в интеграции новых сотрудников (ПК) в рамках своей зоны ответственности'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1',  description: 'Я являюсь примером для других ПК в обслуживании клиентов, ВУППС, 3А, ОЗТ отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_2',  description: 'Я могу интегрировать новых РС на этапе его интеграции в качестве МО'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1',  description: 'Я являюсь наставником для новых ПК и могу участвовать в интеграции новых МО по профессиональным компетенциям (передача знания и опыта в обслуживании покупателей, ВУППС, 3А, ОЗТ, работа с поставщиками и т.д.)'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1',  description: 'Я подготовливаю новых наставников в магазине, регионе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_2',  description: 'Я являюсь наставником для новых РС в рамках своей зоны ответственности'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'integration').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1',  description: 'Для МО, которые выросли из ПК: Я сопровождаю новых ПК. Для новых МО (внешних) - не принимают участие в интеграции новых ПК'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1',  description: 'Я участвую в интеграции и стажировки новых ПК и МО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2',  description: 'Я могу интегрировать новых РС на этапе его интеграции в качестве МО'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1',  description: 'Я участвую в интеграции РС в профессиональных компетенциях.'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2',  description: 'Я вношу предложения по улучшению качества интеграции новых сотрудников'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1',  description: 'Я наставник на уровне региона. Ко мне на стажировку приезжают новые сотрудники из других магазинов'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'integration').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: 'Я провожу интервью с кандидатами(соблюдаю хартию рекрутинга)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2',  description: 'Я пользуюсь Бланком оценки кандидатов'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3',  description: 'Я знаю профиль ПК, знаю критерии отбора'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4',  description: 'При подборе я учитываю не только потребности своего отдела, но и магазина в целом'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_5',  description: 'Я развиваю свои компетенции в подборе (прохожу обучения, коммуницирую с другими РС, сверяя свое мнение с мнением коллег)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_6',  description: 'Я первый наставник нового сотрудника, я корректирую сроки интеграции нового сотрудника в зависимости от его профессионального уровня и опыта работы  и отслеживаю план его интеграции (Например, Я каждый день беседую с новым сотрудником, Я помогаю ему решить его сложности (доступ к программе, перчатки)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_7',  description: 'У 100% новых сотрудников моего отдела есть наставник, стажер и наставник работают в одном графике'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_8',  description: 'Я провожу интеграционные беседы в 1,5 и 3 месяца заполняю  бланки, передаю в службу персонала (оценка, обратная связь, постановка целей)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_9',  description: 'Я знаю причины увольнения в своем отделе '

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1',  description: 'Я знаю органиграмму отдела на год (сам анализировал продуктивность и занятость по сезону)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2',  description: 'Я знаю профиль команды на текущей момент и профиль команды на перспективу'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3',  description: 'Я знаю профиль МО, знаю критерии отбора и провожу собеседования с МО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_4',  description: 'Я подбираю потенциальных сотрудников (Я умею выявлять потенциал)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_5',  description: 'Я знаю мотивацию новых сотрудников моего отдела'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_6',  description: 'Я самостоятельно привлекаю кандидатов (Например, приглашаю к нам на работу хорошего сотрудника другой компании)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_7',  description: 'Я могу провести интеграцию  в отделе нового РС и МО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_8',  description: 'Я осуществляю действия для повышения уровня стабильности в моем отделе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_9',  description: 'Я знаю причины увольнения на уровне отдела, предлагаю решения по по стабильности команды'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_10', description: 'Я являюсь наставником для новых РС в проведении собеседований и анализе кандидата на должность ПК'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1',  description: 'Я  участвую в новых методах подбора персонала (Например, ярмарки вакансий, лекции в ВУЗах)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_2',  description: 'Я являюсь наставником для новых РС в проведении собеседований и анализе кандидатов на должность МО'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_3',  description: 'Я анализирую причины увольнений для изменения критериев подбора кандидатов и предлагаю решения по улучшению стабильности команды магазина '
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_4',  description: 'У каждого моего менеджера есть приемник (У меня спланирована и регулярно актуализируется органиграмма замещения отдела).'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1',  description: 'Я знаю и могу научить начинающих РС эффек-тивному подбору и интеграции новых сотрудников (ключи успеха)'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'integration').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1',  description: 'Я встречаюсь и утверждаю кандидатуры всех новых сотрудников магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2',  description: 'Знаю органиграмму замещения магазина.'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_3',  description: 'Провожу  100% встреч «Добро пожаловать в магазин ЛМ!»'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_4',  description: 'Отслеживаю как проходит интеграция моих сотрудников (встречи 1 раз в квартал с новыми сотрудниками)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_5',  description: 'Я провожу интеграционные беседы с РС и МО  в 1,5 и 3 месяца заполняю  бланки, передаю в службу персонала (оценка, обратная связь, постановка целей)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_6',  description: 'Я анализирую причины увольнений для изменения критериев подбора кандидатов и предлагаю решения по улучшению стабильности команды магазина с СД'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_7',  description: 'Я инициирую новые  методы подбора персонала '
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_8',  description: 'У меня есть план подбора на год, намечена цель по количеству потенциалов, которых нужно принять на работу'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_9',  description: 'Знаю эффективность  подбора и интеграции в магазине'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1',  description: 'У меня спланирована и регулярно актуализируется органиграмма замещения'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_2',  description: 'Я анализирую эффективность подбора и интеграции в магазине,  и предпринимаю действия  для повышения эффективности'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_3',  description: 'Я выявляю (внутренний подбор) подбираю (внешний подбор) талантливых сотрудников'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_4',  description: 'Я сопровождаю новых РС в его интеграцию в команду'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_5',  description: 'Я помогаю новым РС сопровождать имеющихся талантов в  его команде'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_6',  description: 'Я подбираю талантливых сотрудников. За год я взял на работу 3-х талантливых сотрудников и помог профессионально вырасти людям из своей команды'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1',  description: 'Моя модель интеграции – залог успеха магазина. Я объясняю, как организовать процесс и распространить свою модель в других магазинах. Мой магазин становится школой'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_2',  description: 'Я разрабатываю и реализую план действий по преемственности кадров'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_3',  description: 'Я подбираю талантливых сотрудников. За год я взял на работу 3-х талантливых сотрудников и помог профессионально вырасти людям из своей команды. У каждого сотрудника, занимающего ключевую должность есть преемник'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1',  description: 'Я умею учить других подбору персонала. У меня есть не только методика, но и экспертные знания'

#####  Competency: training   #####

  #== Position:    Seller
    p_id = Position.find_by_name('seller').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'training').id

    # Seller:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1',  description: 'Я активно узнаю товары, прохожу обучения по товароам в школе ремонта'

    # Seller:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1',  description: 'Я делюсь  своим опытом и могу являться тренером в отделе / магазине, мастеровым в школе ремонта'

    # Seller:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1',  description: 'Я тренер в своем  отделе / магазине'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_2',  description: 'Я мастеровой в школе ремонта'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_3',  description: 'Принимаю участие в разработке новых тренинговые модули, флеш - обучения'

    # Seller:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1',  description: 'Я тренер на региональном уровне'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_2',  description: ' Я разрабатываю новые тренинги (после прохождения тренинга для тренеров)'

  #== Position:    Dept Manager
    p_id = Position.find_by_name('dept_manager').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'training').id

    # Dept Manager:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1',  description: 'Я участвую в обучении команды отдела по процедурам магазина в качестве наставника'

    # Dept Manager:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1',  description: 'Я знаю планы развития каждого сотрудника отдела и помогаю их достичь'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_2',  description: 'Я эффективно участвую в рабочих группах магазина (например: делюсь опытом, предлагаю идеи, анимирую результаты в своем отделе)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_3',  description: 'Я могу быть тренером в магазине'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_4',  description: 'Я мастеровой в школе ремонта'

    # Dept Manager:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1',  description: 'Я инициирую и веду рабочие группы на уровне магазине'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2',  description: 'Я помогаю РС в сопровождении талантливых ПК в отделе'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_2',  description: 'Я наставник для МО'

    # Dept Manager:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1',  description: 'Я являюсь наставником на уровне региона для своих коллег'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_2',  description: 'Я участвую в региональных и национальных проектах в рамках своего направления'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_3',  description: 'Я тренер магазина (тренинги интеграции)'

  #== Position:    Sector Head
    p_id = Position.find_by_name('sector_head').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'training').id

    # Sector Head:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: 'Я ежедневно сопровождаю работу своей команды, консультирую, помогаю, обучаю на месте (80% рабочего времени я нахожусь в ТЗ вместе со своей командой)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_2',  description: 'Я разрабатываю ИПР, совместно с ДМ, RPRH, для 100% моей команды и сопровождаю согласно ИПР (проведение  пред- и посттренингового сопровождения)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_3',  description: 'У меня в отделе есть обученные наставники'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_4',  description: 'Я тренер магазина (тренинги интеграции, ОЗТ)'

    # Sector Head:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1',  description: 'Я самостоятельно формирую для 100% моей команды индивидуальные планы развития и сопровождаю их (Например: участие членов команды в проектах)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_2',  description: 'У меня в отделе есть таланты, для них разработаны ИРП, который я сопровождаю и сообщаю о результатах на СД'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_3',  description: 'Профессиональный уровень моей команды постоянно растет, что подтверждается результатами БИЛАН'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_4',  description: 'Я тренер магазина (Школа ремонта, Академия менеджеров, тренинги ВУППС, продаж, работы с возражениями)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_5',  description: 'Я сопровождаю проекты развития сотрудников магазина (куратор проекта по обучению менеджеров DEBOCС, куратор школы ремонта, куратор по наставничеству...)'

    # Sector Head:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1',  description: 'Каждый сотрудник моей команды имеет как минимум одну профессиональную цель, которая влияет на показатели отдела (На-пример, увеличение проданных артикулов через адап-тацию линейных метров)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_2',  description: 'Я региональный тренер'

    # Sector Head:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1',  description: 'Члены моей команды принимают участие в региональных и национальных проектах в рамках своих направлений'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_2',  description: 'Я федеральный тренер'

  #== Position:    Store Director
    p_id = Position.find_by_name('store_director').id
    c_id = Competency.find_by_position_id_and_name(p_id, 'training').id

    # Store Director:  Novice
    l_id = Level.find_by_name('novice').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1',  description: 'Вместе с руководителем службы персонала и опытными РС составляю учебные планы'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_2',  description: 'У меня есть список наставников по каждому отделу, каждый РС является тренером как минимум по профессии'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_3',  description: 'Я знаю цели МАС'

    # Store Director:  Specialist
    l_id = Level.find_by_name('specialist').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1',  description: 'Я наставник и тренер по профессии'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_2',  description: 'Участвую в МАС (в части за 2 года до назначения)'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_3',  description: 'У каждого  РС из моего СД есть план индивидуального развития'

    # Store Director:  Professional
    l_id = Level.find_by_name('professional').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1',  description: 'Обучение и наставничество – главные цели магазина'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_2',  description: 'Я наставник МАС – 1'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_3',  description: 'Разработан план обучения сотрудников всех уровней'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_4',  description: 'Непосредственные руководители проводят разбор каждого обучения со своими сотрудниками'

    # Store Director:  Expert
    l_id = Level.find_by_name('expert').id
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1',  description: 'Я способен измерить качественное влияние обучения в магазине на работу персонала'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_2',  description: 'Являюсь наставником для ДМ, сопровождающих МАС'
    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_3',  description: 'В моем магазине самое большое количество высокопрофес-сиональных сотрудников, признанных на уровне компании'


  end
end

######  Competency: dummy   #####
#
#  #== Position:    Seller
#    p_id = Position.find_by_name('seller').id
#    c_id = Competency.find_by_position_id_and_name(p_id, 'dummy').id
#
#    # Seller:  Novice
#    l_id = Level.find_by_name('novice').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_n_1',  description: ''
#
#    # Seller:  Specialist
#    l_id = Level.find_by_name('specialist').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_s_1',  description: ''
#
#    # Seller:  Professional
#    l_id = Level.find_by_name('professional').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_p_1',  description: ''
#
#    # Seller:  Expert
#    l_id = Level.find_by_name('expert').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sl_e_1',  description: ''
#
#  #== Position:    Dept Manager
#    p_id = Position.find_by_name('dept_manager').id
#    c_id = Competency.find_by_position_id_and_name(p_id, 'dummy').id
#
#    # Dept Manager:  Novice
#    l_id = Level.find_by_name('novice').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_n_1',  description: ''
#
#    # Dept Manager:  Specialist
#    l_id = Level.find_by_name('specialist').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_s_1',  description: ''
#
#    # Dept Manager:  Professional
#    l_id = Level.find_by_name('professional').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_p_1',  description: ''
#
#    # Dept Manager:  Expert
#    l_id = Level.find_by_name('expert').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'dm_e_1',  description: ''
#
#  #== Position:    Sector Head
#    p_id = Position.find_by_name('sector_head').id
#    c_id = Competency.find_by_position_id_and_name(p_id, 'dummy').id
#
#    # Sector Head:  Novice
#    l_id = Level.find_by_name('novice').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_n_1',  description: ''
#
#    # Sector Head:  Specialist
#    l_id = Level.find_by_name('specialist').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_s_1',  description: ''
#
#    # Sector Head:  Professional
#    l_id = Level.find_by_name('professional').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_p_1',  description: ''
#
#    # Sector Head:  Expert
#    l_id = Level.find_by_name('expert').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sh_e_1',  description: ''
#
#  #== Position:    Store Director
#    p_id = Position.find_by_name('store_director').id
#    c_id = Competency.find_by_position_id_and_name(p_id, 'dummy').id
#
#    # Store Director:  Novice
#    l_id = Level.find_by_name('novice').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_n_1',  description: ''
#
#    # Store Director:  Specialist
#    l_id = Level.find_by_name('specialist').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_s_1',  description: ''
#
#    # Store Director:  Professional
#    l_id = Level.find_by_name('professional').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_p_1',  description: ''
#
#    # Store Director:  Expert
#    l_id = Level.find_by_name('expert').id
#    Behavior.create competency_id: c_id, level_id: l_id, name: 'sd_e_1',  description: ''

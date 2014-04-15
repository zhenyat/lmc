class PopulateCompetency < ActiveRecord::Migration
  def change
    # === Seller
    p_id = Position.find_by_name('seller').id

    c_id = Cluster.find_by_name('functional').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'product',       title: 'Товар, гамма',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'price',         title: 'Цена',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'client',        title: 'Клиент',                 description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'merchandasing', title: 'Мерчендайзинг',          description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'commerce',      title: 'Коммерческие операции',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'logistics',     title: 'Логистическая цепочка',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'integration',   title: 'Подбор и интеграция',    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'training',      title: 'Обучение',               description: ''

    c_id = Cluster.find_by_name('personality').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'values',          title: 'Носитель ценностей компании', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'humanity',        title: 'Человеколюбие',               description: 'Гуманность, лояльность к коллегам'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'honesty',         title: 'Честность',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'teamwork',        title: 'Командность',                 description: 'Взаимодействие в команде; коллективная работа'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'resistance',      title: 'Стрессоустойчивость',         description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'learningability', title: 'Способнось к обучению',       description: ''

    # === Department Manager
    p_id = Position.find_by_name('dept_manager').id

    c_id = Cluster.find_by_name('functional').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'product',       title: 'Товар, гамма',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'price',         title: 'Цена',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'client',        title: 'Клиент',                 description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'merchandasing', title: 'Мерчендайзинг',          description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'commerce',      title: 'Коммерческие операции',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'logistics',     title: 'Логистическая цепочка',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'integration',   title: 'Подбор и интеграция',    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'training',      title: 'Обучение и развитие',    description: ''

    c_id = Cluster.find_by_name('personality').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'values',          title: 'Носитель ценностей компании', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'humanity',        title: 'Человеколюбие',               description: 'Гуманность'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'honesty',         title: 'Честность',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'teamwork',        title: 'Командность',                 description: 'Взаимодействие в команде; коллективная работа'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'resistance',      title: 'Стрессоустойчивость',         description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'learningability', title: 'Способнось к обучению',       description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'leadership',      title: 'Лидерство',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'result_focus',    title: 'Ориетация на результат',      description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'communications',  title: 'Эффекатиные коммуникации',    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'development',     title: 'Стремление к развитию',       description: ''

    c_id = Cluster.find_by_name('managerial').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'planning',   title: 'Планирование и организация', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'analysis',   title: 'Анализ ситуации',            description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'decision',   title: 'Принятие решений',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'management', title: 'Бизнес управление',          description: ''

    # === Sector Head
    p_id = Position.find_by_name('sector_head').id

    c_id = Cluster.find_by_name('functional').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'product',       title: 'Товар, гамма',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'price',         title: 'Цена',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'client',        title: 'Клиент',                 description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'merchandasing', title: 'Мерчендайзинг',          description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'commerce',      title: 'Коммерческие операции',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'logistics',     title: 'Логистическая цепочка',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'integration',   title: 'Подбор и интеграция',    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'training',      title: 'Обучение и развитие',    description: ''

    c_id = Cluster.find_by_name('personality').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'values',          title: 'Носитель ценностей компании',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'humanity',        title: 'Человеколюбие',                description: 'Гуманность'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'honesty',         title: 'Честность',                    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'teamwork',        title: 'Командность',                  description: 'Взаимодействие в команде; коллективная работа'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'resistance',      title: 'Стрессоустойчивость',          description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'learningability', title: 'Способнось к обучению',        description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'leadership',      title: 'Лидерство',                    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'result_focus',    title: 'Ориетация на результат',       description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'communications',  title: 'Эффекатиные коммуникации',     description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'development',     title: 'Стремление к развитию',        description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'thinking',        title: 'Системное мышление',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'team_leadership', title: 'Лидерство в развитии команды', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'flexibility',     title: 'Гибкость',                     description: ''

    c_id = Cluster.find_by_name('managerial').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'planning',   title: 'Планирование и организация', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'analysis',   title: 'Анализ ситуации',            description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'decision',   title: 'Принятие решений',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'management', title: 'Бизнес управление',          description: ''

    c_id = Cluster.find_by_name('strategical').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'business', title: 'Понимание бизнеса Компании',              description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'strategy', title: 'Формирование стратегии развития отдела',  description: ''

    # === Store Director
    p_id = Position.find_by_name('store_director').id

    c_id = Cluster.find_by_name('functional').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'product',       title: 'Товар, гамма',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'price',         title: 'Цена',                   description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'client',        title: 'Клиент',                 description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'merchandasing', title: 'Мерчендайзинг',          description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'commerce',      title: 'Коммерческие операции',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'logistics',     title: 'Логистическая цепочка',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'integration',   title: 'Подбор и интеграция',    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'training',      title: 'Обучение и развитие',    description: ''

    c_id = Cluster.find_by_name('personality').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'values',          title: 'Носитель ценностей компании',  description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'humanity',        title: 'Человеколюбие',                description: 'Гуманность'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'honesty',         title: 'Честность',                    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'teamwork',        title: 'Командность',                  description: 'Взаимодействие в команде; коллективная работа'
    Competency.create position_id: p_id, cluster_id: c_id, name: 'resistance',      title: 'Стрессоустойчивость',          description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'learningability', title: 'Способнось к обучению',        description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'leadership',      title: 'Лидерство',                    description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'result_focus',    title: 'Ориетация на результат',       description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'communications',  title: 'Эффекатиные коммуникации',     description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'development',     title: 'Стремление к развитию',        description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'thinking',        title: 'Системное мышление',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'team_leadership', title: 'Лидерство в развитии команды', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'flexibility',     title: 'Гибкость',                     description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'environment',     title: 'Создание развивающей среды',   description: ''

    c_id = Cluster.find_by_name('managerial').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'planning',   title: 'Планирование и организация', description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'analysis',   title: 'Анализ ситуации',            description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'decision',   title: 'Принятие решений',           description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'management', title: 'Бизнес управление',          description: ''

    c_id = Cluster.find_by_name('strategical').id
    Competency.create position_id: p_id, cluster_id: c_id, name: 'business', title: 'Понимание бизнеса Компании',                description: ''
    Competency.create position_id: p_id, cluster_id: c_id, name: 'strategy', title: 'Формирование стратегии развития магазина',  description: ''

    # === Regional Director  - NOT READY

  end
end

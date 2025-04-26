return {
    descriptions = {
        Back = {
            b_idst_huanyuback = {
                name = "欢愉牌组",
                text = {
                    "开局时拥有",
                    "{C:tarot,T:v_idst_huanyuhuangzai}寰宇蝗灾{}优惠券",
                    "和{C:event,T:c_idst_tiancaijulebu}天才俱乐部",
                }
            },
        },
        Blind = {
            bl_idst_xingqiri = {
                name = '星期日',
                text = {
                    '本回合+7出牌次数',
                    '每次出牌削弱50%盲注分数',
                    '每7次出牌时施放太初有为',
                }
            },
        },
        Spectral = {
            c_idst_hertagift = {
                name = '黑塔的礼物',
                text = {
                    '提升所有{C:legendary,E:1}牌型{}升级效果',
                    '{C:mult}+3{}倍率并且{C:chips}+30{}筹码',
                    '影响将包括本赛局所有',
                    '{C:planet}星球牌{}及其他升级效果',
                    '{C:inactive}Who is Herta?',
                }
            },
        },
        Event = {
            c_idst_ruanmei1 = {
                name = '阮梅（其一）',
                text = {
                    '获得{C:money}$2000'
                }
            },
            c_idst_ruanmei2 = {
                name = '阮梅（其二）',
                text = {
                    '生成{C:money}卡尼奥{},{C:chips}特里布莱{}',
                    '{C:attention}约里克{},{C:mult}希科{}和{C:tarot}帕奇欧{}',
                    '并给予它们{C:dark_edition}负片{}效果',
                }
            },
            c_idst_ruanmei3 = {
                name = '阮梅（其三）',
                text = {
                    '生成{C:mult}20{}张{C:dark_edition}负片{}',
                    '{C:tarot}塔罗牌{}或{C:planet}星球牌',
                }
            },
            c_idst_ahawanou = {
                name = '阿哈玩偶',
                text = {
                    '选定最多{C:attention}#1#{}张卡牌',
                    '将{C:attention}最左侧{}牌的{C:chips}能力{}',
                    '复制到所有{C:attention}右侧{}牌上',
                    '{C:inactive}(你可以拖动来改变位置)'
                }
            },
            c_idst_chongchaochenshuilingzhu = {
                name = '虫潮沉睡领主',
                text = {
                    '使用后{C:tarot}底注-1',
                    '有可能{C:green}惊醒虫群',
                    '记得{C:dark_edition}不要出声{}...'
                }
            },
            c_idst_chunmeiqishidebangzhu = {
                name = '纯美骑士的帮助',
                text = {
                    '选定{C:attention}#1#{}张卡牌',
                    '转换为带有{C:red}红色蜡封{}的',
                    '{C:dark_edition}多彩{C:attention}钢铁{C:hearts}红桃{C:attention}K',
                }
            },
            c_idst_chuwangzhengba = {
                name = '厨王争霸',
                text = {
                    '随机生成一张{C:event}事件牌',
                    '如果拥有{C:attention}食物{}小丑牌',
                    '则额外给予一张{C:dark_edition}负片{C:event}事件牌'
                }
            },
            c_idst_diguoyichan = {
                name = '帝国遗产',
                text = {
                    '随机生成两张带有{C:dark_edition}负片',
                    '的{C:attention}小丑牌{}和{C:attention}消耗牌',
                    '但它们很可能是',
                    '{C:dark_edition}易腐{}并完全被削弱的'
                }
            },
            c_idst_gudutaikong = {
                name = '孤独太空',
                text = {
                    '{C:tarot}交换{}上一次打出',
                    '牌型的{C:planet}等级{}与被',
                    '统计的{C:attention}打出次数',
                }
            },
            c_idst_guilaidesuiyang = {
                name = '归来的岁阳',
                text = {
                    '直接使用{C:dark_edition}好像{}',
                    '什么都不会发生',
                    '此牌处于{C:attention}消耗牌槽位{}中时',
                    '将给予{X:mult,C:white}X#1#{}倍率'
                }
            },
            c_idst_hexiebisai = {
                name = '和谐比赛',
                text = {
                    '选定最多{C:attention}#1#{}张卡牌',
                    '将{C:attention}未被选中{}的牌',
                    '变成{C:attention}牌堆底{}的那张牌'
                }
            },
            c_idst_saliao = {
                name = '萨里奥',
                text = {
                    '底注数为{C:chips}奇数{}时使用',
                    '获得一张{C:dark_edition}负片{C:planet}星球牌',
                    '底注数为{C:mult}偶数{}时使用',
                    '获得一张{C:dark_edition}负片{C:spectral}幻灵牌',
                }
            },
            c_idst_sanjinzhizhanzheng = {
                name = '三进制战争',
                text = {
                    '在{C:attention}盲注{}中使用后',
                    '本回合计算分数',
                    '会先将{C:chips}筹码{}与{C:mult}倍率{}',
                    '进行{C:dark_edition}三进制{}转换'
                }
            },
            c_idst_sanzhixiaozhu = {
                name = '三只小猪',
                text = {
                    '在{C:green}商店{}中使用后本回合',
                    '获得多次{C:green}免费重掷',
                    '{C:dark_edition}早晨{}的小猪跑得快...',
                }
            },
            c_idst_tiancaijulebu = {
                name = '天才俱乐部',
                text = {
                    '{C:dark_edition}复制{}槽位中',
                    '{C:tarot}最左侧{}消耗牌',
                    '的使用效果',
                }
            },
            c_idst_weixiantouwei = {
                name = '危险投喂',
                text = {
                    '使用后{C:tarot}小丑牌槽位+1',
                    '{C:attention}激怒野兽{}可能是{C:mult}致命{}的',
                    '记得{C:dark_edition}缓步慎行{}...',
                }
            },
            c_idst_womenshiniuzai = {
                name = '我们是牛仔',
                text = {
                    '在{C:attention}盲注{}中使用后',
                    '使得至少得分{C:attention}X2',
                    '并获得{C:attention}2{}个{C:mult}双倍标签',
                }
            },
            c_idst_xiangsushijie = {
                name = '像素世界',
                text = {
                    '随机生成一张{C:green}幻视{}',
                    '{C:mult}模糊{},{C:attention}捷径{}或{C:tarot}四指{}',
                    '不妨尝试进入{C:dark_edition}像素世界{}...'
                }
            },
            c_idst_xingjihepingtouzi = {
                name = '星际和平投资机器',
                text = {
                    '花费一定{C:money}资金',
                    '投资你的{C:attention}信任',
                    '此牌效果将随本赛局',
                    '{C:chips}使用次数{}增加而变化',
                }
            },
            c_idst_xugeyuanba = {
                name = '许个愿吧',
                text = {
                '在{C:attention}盲注{}中使用后',
                '升级当前选择{C:legendary}牌型',
                '提升{C:attention}#1#{}个等级',
                '此牌效果将随本赛局',
                '{C:chips}使用次数{}增加而变化',
                }
            },
            c_idst_xugoushixuejia = {
                name = '虚构史学家',
                text = {
                    '选定最多{C:attention}#1#{}张卡牌',
                    '转换为{C:dark_edition}镭射{C:attention}玻璃牌',
                    '并将其两侧卡牌增强为{C:attention}石头牌',
                    '{C:inactive}(你可以拖动来改变位置)'
                }
            },
            c_idst_yinhehaoren = {
                name = '银河好人',
                text = {
                    '选定最多{C:attention}#1#{}张卡牌',
                    '获得{C:chips}+20{}额外筹码',
                    '如果是{C:green}斐波那契{}点数',
                    '则再令额外筹码{X:chips,C:white}X2',
                }
            },
            c_idst_youmukuanggong = {
                name = '游牧矿工',
                text = {
                    '使选定{C:attention}小丑牌',
                    '的{C:money}售价{}翻倍',
                    '并获得等量{C:money}资金',
                    '{C:inactive}（最高提升至{C:money}$#1#{C:inactive}）'
                }
            },
            c_idst_zhanbu = {
                name = '强力占卜',
                text = {
                    '在{C:attention}盲注{}中使用后',
                    '如果{C:attention}牌堆顶{}的那张牌',
                    '没有{C:dark_edition}版本效果{}',
                    '则为其添加{C:dark_edition}多彩{}并获得它的{C:attention}3{}张复制',
                    '{C:attention}盲注{}中还将实时揭示{C:attention}牌堆顶{}的情况'
                }
            },
        },
        Other = {
            p_idst_event_pack={
                name = '事件包',
                text = {
                    '从最多{C:attention}#2#{}张{C:event}事件牌{}中',
                    '选择{C:attention}#1#{}张',
                    '添加到你的槽位',
                },
            },
        },
        Voucher = {
            v_idst_huanyuhuangzai={
                name = "寰宇蝗灾",
                text = {
                    "商店中可能",
                    "出现{C:event}事件牌",
                },
            },
            v_idst_huangjinyujixie={
                name = "黄金与机械",
                text = {
                    "商店内",
                    "{C:event}事件牌",
                    "出现频率{C:attention}X2",
                },
            },
        },
    },
    misc={
        dictionary = {
            k_idst_attention1 = "平衡并三进制转换",
            k_idst_attention2 = "三进制转换",
            k_idst_attention3 = "收好你的附赠礼物...",
            k_idst_attention4 = "你惊扰了虫群！",
            k_idst_attention5 = "捍卫银河中的美",
            k_idst_attention6 = "交换中...",
            k_idst_attention7 = "下次归来会变得更强...",
            k_idst_attention8 = "选择里奥...",
            k_idst_attention9 = "选择萨里...",
            k_idst_attention10 = "修复同化单元...",
            k_idst_attention11 = "早上好，又是活力的一天！",
            k_idst_attention12 = "下午好，一起加油吧！",
            k_idst_attention13 = "晚上好，三只小猪要睡觉了...",
            k_idst_attention14 = "还是谨慎为好...",
            k_idst_attention15 = "野兽夺去了你的双手！",
            k_idst_attention16 = "我是萝卜？",
            k_idst_attention17 = "爬进左边的管道...",
            k_idst_attention18 = "小赚一笔~",
            k_idst_attention19 = "赢得回报！",
            k_idst_attention20 = "投资有风险...",
            k_idst_attention21 = "大赚特赚！",
            k_idst_attention22 = "一无所有...",
            k_idst_attention23 = "克里珀的恩赐！",
            k_idst_attention24 = "能力有限...",
            k_idst_attention25 = "已至上限！",
            k_idst_attention26 = "克里珀的祝福！",
            k_idst_attention27 = "命中注定...",
            k_idst_sunday1 = "第一日，赐以真实",
            k_idst_sunday2 = "第二日，赐以历法",
            k_idst_sunday3 = "第三日，赐以言语",
            k_idst_sunday4 = "第四日，赐以价值",
            k_idst_sunday5 = "第五日，赐以规则",
            k_idst_sunday6 = "第六日，赐以意义",
            k_idst_sunday7 = "第七日，赐以尊严，即将见证，太初有为！",
            k_idsteventpack = "事件包",
            b_event_cards = "事件牌",
            k_event = "星铁事件牌",
        },
    },
}
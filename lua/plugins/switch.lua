return {
    -- 单词或符号快速取反意
    {
        "AndrewRadev/switch.vim",
        config = function()
            -- NOTE: switch 手动定义需要增加的反意单词
            local switch_words = {
                {"true", "false"},
                {"on", "off"},
                {"yes", "no"},
                {"disable", "enable"},
                {"+", "-"},
                {">", "<"},
                {"=", "!="},
                {"*", "/"},
                {"left","right"},
                {"up","down"},
                {"front","rear"},
                {"quick","slow"},
                {"out","in"},
                {"input","output"},
                {"and","or"},
                {"||","&&"},
            }
            -- enable Enable ENABLE
            -- 定义增加单词的容器
            local push_words = {}
            for _, value in ipairs(switch_words) do
                local w1, w2 = value[1], value[2]
                -- 全小写
                table.insert(push_words, value)
                -- 全大写
                table.insert(push_words, {string.upper(w1), string.upper(w2)})
                -- 首字母大写，%l 代表小写字母，只取第一个
                w1, _ = string.gsub(w1, "^%l", string.upper)
                w2, _ = string.gsub(w2, "^%l", string.upper)
                table.insert(push_words, {w1, w2})
            end
        end
    }
}

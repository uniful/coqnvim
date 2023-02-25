return {
    -- 代码补全插件
    {
        "ms-jpq/coq_nvim",build = "python3 -m coq deps",
        event = "InsertEnter",
        dependencies = {
            {"ms-jpq/coq.artifacts",lazy = true},
            {"ms-jpq/coq.thirdparty"}
        }
    }
}

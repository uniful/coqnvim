return {
    -- 为代码调试提供内联文本
    {
        "theHamsta/nvim-dap-virtual-text",
        opts = {
            enabled = true,
            enabled_commands = true,        
            highlight_changed_variables = true,
            highlight_new_as_changed = false,
            show_stop_reason = true,
            commented = true,
            only_first_definition = true,
            all_references = false, 
            filter_references_pattern = '<module',
            virt_text_pos = 'eol',
            all_frames = false,
            virt_lines = false,
            virt_text_win_col = nil,
        }
    }
}

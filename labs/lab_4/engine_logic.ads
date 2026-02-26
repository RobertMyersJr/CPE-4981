package ENGINE_LOGIC is
    type ENGINE_STATE is (STATE_NULL, STATE_1,STATE_2,STATE_3);
    function STATE_1_FUC() return ENGINE_LOGIC;
    function STATE_2_FUC() return ENGINE_LOGIC;
    function STATE_3_FUC() return ENGINE_LOGIC;
end ENGINE_LOGIC;

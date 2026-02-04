package Stacks is
    type Stack is limited private;
    -- Limited type. Cannot assign nor compare.

    procedure Push (S : in out Stack;
        Val : Integer);
    procedure Pop (S : in out Stack;
        Val : out Integer);
    private
    subtype Stack_Index is
    Natural range 1 .. 10;

    type Content_Type is
        array (Stack_Index) of Natural;

    type Stack is limited record
        Top : Stack_Index;
        Content : Content_Type;
    end record;
end Stacks;

